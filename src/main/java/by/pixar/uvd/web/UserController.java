package by.pixar.uvd.web;

import by.pixar.uvd.domain.Users;
import by.pixar.uvd.exceptions.UserExistException;
import by.pixar.uvd.service.RovdService;
import by.pixar.uvd.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;
import java.util.Map;

@Controller
public class UserController {

    @Autowired
    UserService userService;

    @Autowired
    RovdService rovdService;

    //Add messages on action (delete,add,edit)
    private String msg;
    private String type;

    @RequestMapping(value = "/adminPanel", method = RequestMethod.GET)
    public String admin(Map<String, Object> map) {
        map.put("users", userService.getUsers());
        map.put("rovd",rovdService.listRovd());
        map.put("msg",msg);
        if(type==null)
            map.put("type","success");
        else
            map.put("type",type);
        msg=null;
        type=null;
        return "user/user";
    }

    @RequestMapping(value = "/addUsers", method = RequestMethod.GET)
    public String addUsers(Map<String, Object> map) {
        map.put("users", new Users());
        map.put("rovd",rovdService.listRovd());
        return "user/addUser";
    }

    @RequestMapping(value = "/addNewUser", method = RequestMethod.POST)
    public String addNewUser(@Valid Users users, BindingResult result,Map map) {

        try {
            userService.addUser(users);
            msg = "Пользователь добавлен";
             return "redirect:/adminPanel";
        }

        catch (UserExistException e) {
            map.put("msg",e.getMSG());
            map.put("type","danger");
            return "user/addUser";
        }
        catch (Exception e) {
            map.put("msg","Не удалось добавить пользователя");
            map.put("type","danger");
            return "user/addUser";
        }



    }

    @RequestMapping(value = "/deleteUser/{id}", produces = "text/html", method = RequestMethod.GET)
    public String deleteUser(@PathVariable("id") Integer id) {
        try {
            userService.deleteUser(id);
            msg = "Пользователь успешно удален";

        }
        catch (Exception e) {
            msg = "Не удалось удалить пользователя";
            type="danger";
        }
        finally {
            return "redirect:/adminPanel";
        }

    }

    @RequestMapping(value = "/editUser", method = RequestMethod.POST)
    public String editUser(@ModelAttribute("user") Users user,
                           BindingResult result) {

        try {
            userService.editUser(user);
            msg = "Пользователь успешно отредактирован";


        }
        catch (UserExistException e) {
            msg = e.getMSG();
            type="danger";

        }
        catch (Exception e) {
            msg ="Не удалось отредактировать пользователя";
            type="danger";

        }
        finally {
            return "redirect:/adminPanel";
        }
    }

}
