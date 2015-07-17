package by.pixar.uvd.web;

import by.pixar.uvd.domain.Personal;
import by.pixar.uvd.service.PersonalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.Map;

@Controller
public class PersonalController {
    @Autowired
   PersonalService personalService;


    @RequestMapping("/")
    public String home() {
        return "hello";
    }
    @RequestMapping("/personal")
    public String listContacts(Map<String, Object> map) {
        map.put("personalList", personalService.listPersonal());

        return "personal";
    }
    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String addPersonal(@ModelAttribute("personal") Personal personal,
                             BindingResult result) {

        personalService.addPersonal(personal);

        return "hello";
    }


        @RequestMapping("/adds")
        public String add(Map<String, Object> map) {
            map.put("personal", new Personal());
            return "addPersonal";
        }

}
