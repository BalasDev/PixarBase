package by.pixar.uvd.security;


import by.pixar.uvd.domain.Users;
import by.pixar.uvd.service.UserService;
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

    @Autowired
    UserService userService;
    @Autowired
    private HttpServletRequest request;

    @Override
    @Transactional
    public UserDetails loadUserByUsername(String login) throws UsernameNotFoundException {




        Users user = userService.getUserByLogin(login);
        String ipAddress = request.getRemoteAddr();
        System.out.println(ipAddress);
        if (!ipAddress.equals(user.getIp())){

            throw new RuntimeException("Не правельный IP адресс");
           }
        boolean enabled = true;
        boolean accountNonExpired = true;
        boolean credentialsNonExpired = true;
        boolean accountNonLocked = true;

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

}
