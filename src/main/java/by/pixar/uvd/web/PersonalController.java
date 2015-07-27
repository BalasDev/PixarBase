package by.pixar.uvd.web;

import by.pixar.uvd.domain.Personal;
import by.pixar.uvd.service.PersonalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;
import java.util.Map;

@Controller
public class PersonalController {
    @Autowired
    PersonalService personalService;

    @RequestMapping("/menu")
    public String menu (Map<String, Object> map) {
        map.put("personalList", personalService.listPersonal());
        return "menu";
    }


    @RequestMapping("/")
    public String home(Map<String, Object> map) {
        map.put("personalList", personalService.listPersonal());
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


    @RequestMapping(value = "/adds", method = RequestMethod.GET)
    public String add(Map<String, Object> map) {
        map.put("personal", new Personal());
        return "/addPersonal";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String addPersonal(@Valid Personal personal,
                              BindingResult result, Map<String, Object> map) {
        if (result.hasErrors()) {
            return "/addPersonal";
        }
        personalService.addPersonal(personal);
        map.put("personalList", personalService.listPersonal());
        return "menu";
    }
// delete
@RequestMapping(value="/delete/{id}", produces = "text/html", method = RequestMethod.GET)
public String deleteContact(@PathVariable("id") Integer id,Map<String, Object> map) {

    personalService.deletePersonal(id);
    map.put("personalList", personalService.listPersonal());
    return "menu";
}

}
