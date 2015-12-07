package by.pixar.uvd.security;


import by.pixar.uvd.domain.Users;
import by.pixar.uvd.service.UserService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Service("CustomUserService")
public class CustomUserDetailsService implements UserDetailsService {

    // init log
    private static final Logger log = Logger.getLogger(CustomUserDetailsService.class);

    private static final String[] HEADERS_TO_TRY = {
            "X-Forwarded-For",
            "Proxy-Client-IP",
            "WL-Proxy-Client-IP",
            "HTTP_X_FORWARDED_FOR",
            "HTTP_X_FORWARDED",
            "HTTP_X_CLUSTER_CLIENT_IP",
            "HTTP_CLIENT_IP",
            "HTTP_FORWARDED_FOR",
            "HTTP_FORWARDED",
            "HTTP_VIA",
            "REMOTE_ADDR" };

    @Autowired
    UserService userService;
    @Autowired
    private HttpServletRequest request;

    @Override
    @Transactional
    public UserDetails loadUserByUsername(String login) throws UsernameNotFoundException {


        Users user = userService.getUserByLogin(login);

        String ipAddress = getClientIpAddress(request);

        System.out.println(ipAddress);
        if (!ipAddress.equals(user.getIp())){

            throw new UsernameNotFoundException("Не правильный IP адресс");
           }
        boolean enabled = true;
        boolean accountNonExpired = true;
        boolean credentialsNonExpired = true;
        boolean accountNonLocked = true;

        log.info("ВОШЕЛ пользователь: " + user.getLogin() + "(" + user.getRovd().getName() + ")");

        return new User(
            user.getLogin(),
            user.getPassword(),
            enabled,
            accountNonExpired,
            credentialsNonExpired,
            accountNonLocked,
            getGrantedAuthorities(user.getRole().getName())

        );
    }

    public static List getGrantedAuthorities (String role) {
        List authorities = new ArrayList();
        authorities.add(new SimpleGrantedAuthority(role));
        return authorities;
    }

    public static String getClientIpAddress(HttpServletRequest request) {
        for (String header : HEADERS_TO_TRY) {
            String ip = request.getHeader(header);
            System.out.println("ip from header " + ip );
            if (ip != null && ip.length() != 0 && !"unknown".equalsIgnoreCase(ip)) {

                return ip;
            }
        }
        System.out.println("ip from request " + request.getRemoteAddr() );
        return request.getRemoteAddr();
    }
}
