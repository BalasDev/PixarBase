package by.pixar.uvd.web;

import by.pixar.uvd.domain.AtributePersonal;
import by.pixar.uvd.domain.Personal;
import by.pixar.uvd.service.PersonalService;
import com.sun.deploy.nativesandbox.comm.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.Map;

import static by.pixar.uvd.domain.AtributePersonal.*;

@Controller
public class PersonalController {
    @Autowired
    PersonalService personalService;

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
    public String searchUser(Map<String, Object> map, @RequestParam("categoryId") String category, @RequestParam("searching") String searching) {

        map.put("personalList", personalService.findPersonal(category, searching));
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

}
