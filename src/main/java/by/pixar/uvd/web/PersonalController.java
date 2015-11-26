package by.pixar.uvd.web;

import by.pixar.uvd.domain.FormFields;
import by.pixar.uvd.domain.Personal;
import by.pixar.uvd.service.PersonalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.Map;

@Controller
public class PersonalController {

    @Autowired
    PersonalService personalService;



    //Add messages on action (delete,add,edit)
    private String msg;
    private String type;

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



}
