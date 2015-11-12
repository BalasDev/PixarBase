package by.pixar.uvd.web;

import by.pixar.uvd.domain.AtributePersonal;
import by.pixar.uvd.domain.Personal;
import by.pixar.uvd.domain.Users;
import by.pixar.uvd.service.PersonalService;
import by.pixar.uvd.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.Map;

import static by.pixar.uvd.domain.AtributePersonal.values;

@Controller
public class PersonalController {

    @Autowired
    PersonalService personalService;

    @Autowired
    UserService userService;

    private String msg;

    @RequestMapping("/")
    public String home(Map<String, Object> map) {
        map.put("personalList", personalService.listPersonal());
        map.put("personal", new Personal());
        map.put("stringTitle", "Список");
        return "menu";
    }

    @RequestMapping("/sing")
    public String sing() {
        return "singIn";
    }

    @RequestMapping("/logError")
    public String logError() {
        return "logError";
    }

    @RequestMapping("/personal")
    public String listContacts(Map<String, Object> map) {
        map.put("personalList", personalService.listPersonal());

        return "personal";
    }

    @RequestMapping(value = "/searchs", method = RequestMethod.GET)
    public String search(Map<String, Object> map) {

        for (AtributePersonal atributPersonal : values()) {
            map.put(atributPersonal.getField(), atributPersonal.getView());
        }
        //map.put("personal", new Personal());
        return "search";
    }

    @RequestMapping(value = "/searchUser", method = RequestMethod.POST)
    public String searchUser(Map<String, Object> map, @RequestParam("categoryId") String category, @RequestParam("searching") String searching,
                             @RequestParam("stdate") String startDate,@RequestParam("fndate") String endDate) {

        map.put("personalList", personalService.findPersonal(category, searching,startDate,endDate));
        map.put("stringTitle", "Результаты поиска");
        map.put("personal", new Personal());
        return "menu";
    }


    @RequestMapping(value = "/adds", method = RequestMethod.GET)
    public String add(Map<String, Object> map) {
        map.put("personal", new Personal());
        return "/addPersonal";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String addPersonal(@Valid Personal personal,
                              BindingResult result) {
        if (result.hasErrors()) {
            return "/addPersonal";
        }

        personalService.addPersonal(personal);
        return "redirect:/";
    }

    // delete
    @RequestMapping(value = "/delete/{id}", produces = "text/html", method = RequestMethod.GET)
    public String deleteContact(@PathVariable("id") Integer id) {
        personalService.deletePersonal(id);
        return "redirect:/";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    public String editContact(@ModelAttribute("personal") Personal personal,
                              BindingResult result) {
        personalService.editPersonal(personal);
        return "redirect:/";
    }

    @RequestMapping(value = "/adminPanel", method = RequestMethod.GET)
    public String admin(Map<String, Object> map) {
        map.put("users", userService.getUsers());
        map.put("msg",msg);
        map.put("type","success");
        msg=null;
        return "/admin";
    }

    @RequestMapping(value = "/addUsers", method = RequestMethod.GET)
    public String addUsers(Map<String, Object> map) {
        map.put("users", new Users());
        return "/addUser";
    }

    @RequestMapping(value = "/addNewUser", method = RequestMethod.POST)
    public String addNewUser(@Valid Users users, BindingResult result,Map map) {
        if ((result.hasErrors())||(!userService.addUser(users))) {
            map.put("msg","Не удалось добавить пользователя");
            map.put("type","danger");
            return "/addUser";
        }
        else {
              msg="Пользователь добавлен";
             return "redirect:/adminPanel";
        }
    }
}
