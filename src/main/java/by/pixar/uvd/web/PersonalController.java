package by.pixar.uvd.web;

import by.pixar.uvd.domain.FormFields;
import by.pixar.uvd.domain.Personal;
import by.pixar.uvd.domain.Users;
import by.pixar.uvd.exceptions.UserExistException;
import by.pixar.uvd.service.PersonalService;
import by.pixar.uvd.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.CannotCreateTransactionException;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.util.Map;

@Controller
public class PersonalController {

    @Autowired
    PersonalService personalService;

    @Autowired
    UserService userService;

    //Add messages on action (delete,add,edit)
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

      //  for (AtributePersonal atributPersonal : values()) {
      //      map.put(atributPersonal.getField(), atributPersonal.getView());
      //  }
        map.put("fields", new FormFields().getFields());
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
        map.put("fields", new FormFields().getFields());
       return "/addPersonal";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String addPersonal(@Valid Personal personal,
                              BindingResult result, Map map) {
        if (result.hasErrors()) {
            map.put("fields", new FormFields().getFields());
            return "/addPersonal";
        }

        personalService.addPersonal(personal);
        return "redirect:/";
    }

    // delete
    @RequestMapping(value = "/delete/{id}", produces = "text/html", method = RequestMethod.GET)
    public String deletePersonal(@PathVariable("id") Integer id) {
        personalService.deletePersonal(id);
        return "redirect:/";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    public String editPersonal(@ModelAttribute("personal") Personal personal,
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

           try {
               userService.addUser(users);
               msg = "Пользователь добавлен";
               return "redirect:/adminPanel";
           }

           catch (UserExistException e) {
               map.put("msg",e.getMSG());
               map.put("type","danger");
               return "/addUser";
           }
           catch (Exception e) {
               map.put("msg","Не удалось добавить пользователя");
               map.put("type","danger");
               return "/addUser";
           }



    }

    @RequestMapping(value = "/deleteUser/{id}", produces = "text/html", method = RequestMethod.GET)
    public String deleteUser(@PathVariable("id") Integer id,Map map) {
        try {
            userService.deleteUser(id);
            msg = "Пользователь успешно удален";

        }
        catch (Exception e) {
            map.put("msg", "Не удалось удалить пользователя");
        }
        finally {
            return "redirect:/adminPanel";
        }

    }

    @RequestMapping(value = "/editUser", method = RequestMethod.POST)
    public String editUser(@ModelAttribute("user") Users user,
                               BindingResult result) {

       userService.editUser(user);

        return "redirect:/adminPanel";
    }

    @ExceptionHandler(CannotCreateTransactionException.class)

    public ModelAndView handleAllException(CannotCreateTransactionException e) {

        ModelAndView model = new ModelAndView("/error");
        model.addObject("er", e.getMessage());

        return model;

    }
}
