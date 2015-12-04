package by.pixar.uvd.web;

import by.pixar.uvd.domain.FormFields;
import by.pixar.uvd.domain.Personal;
import by.pixar.uvd.domain.Users;
import by.pixar.uvd.exceptions.PersonExistException;
import by.pixar.uvd.service.PersonalService;
import by.pixar.uvd.service.RovdService;
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

    @Autowired
    RovdService rovdService;



    //Add messages on action (delete,add,edit)
    private String msg;
    private String type;

    @RequestMapping("/")
    public String home(Map<String, Object> map) {
        map.put("personalList", personalService.listPersonal());
        map.put("personal", new Personal());
        map.put("rovd",rovdService.listRovd());
        map.put("stringTitle", "Список");

        map.put("msg",msg);
        if(type==null)
            map.put("type","success");
        else
            map.put("type",type);
        msg=null;
        type=null;
        return "personal/personal";
    }

    @RequestMapping("/sing")
    public String sing() {
       /* Map map = new HashMap();
        map.put("msg",msg);
        msg=null;*/
        return "singIn";
    }

    @RequestMapping("/logError")
    public String logError() {

    //msg = "Wrong";

    return "logError";
    }

   /* @RequestMapping("/personal")
    public String listContacts(Map<String, Object> map) {
        map.put("personalList", personalService.listPersonal());
        map.put("rovd",rovdService.listRovd());

        return "personal";
    }*/

    @RequestMapping(value = "/searchs", method = RequestMethod.GET)
    public String search(Map<String, Object> map) {



        map.put("fields", new FormFields().getFields());
        //map.put("personal", new Personal());
        map.put("msg",msg);
        map.put("type",type);
        msg=null;
        return "search";
    }

    @RequestMapping(value = "/searchUser", method = RequestMethod.POST)
    public String searchUser(Map<String, Object> map, @RequestParam("categoryId") String category, @RequestParam("searching") String searching,
                             @RequestParam("stdate") String startDate,@RequestParam("fndate") String endDate) {

        try {
//            if (/*(category != null) && */(searching.equals("")) && (startDate.equals("")) && (endDate.equals(""))) {
                map.put("personalList", personalService.findPersonal(category, searching, startDate, endDate));
                map.put("stringTitle", "Результаты поиска");
                map.put("personal", new Personal());
                return "personal/personal";
//            } else {
//                msg = "Параметры поиска пустые";
//                type = "danger";
//                return "redirect:/searchs";
//            }
        }catch (NumberFormatException e){

            msg = "Не верные параметры поиска";
            type = "danger";
 //           map.put("msg",msg);
 //           map.put("type",type);

            return "redirect:/searchs";

        }


    }


    @RequestMapping(value = "/adds", method = RequestMethod.GET)
    public String add(Map<String, Object> map) {
        map.put("personal", new Personal());
        map.put("users", new Users());
        map.put("fields", new FormFields().getFields());
        map.put("rovd",rovdService.listRovd());
       return "personal/addPersonal";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String addPersonal(@Valid Personal personal,
                              BindingResult result, Map map) {
        if (result.hasErrors()) {
            map.put("fields", new FormFields().getFields());
            map.put("personal", new Personal());
            map.put("msg","Не удалось добавить запись");
            map.put("type","danger");
            return "personal/addPersonal";
        }
       try {
           personalService.addPersonal(personal);
           msg = "Запись добавлена";
           return "redirect:/";
       }catch (PersonExistException e) {
           map.put("fields", new FormFields().getFields());
           map.put("personal", new Personal());
           map.put("msg",e.getMSG());
           map.put("type","danger");
           return "personal/addPersonal";
       }
       catch (Exception e) {
           map.put("fields", new FormFields().getFields());
           map.put("personal", new Personal());
           map.put("msg","Не удалось добавить запись");
           map.put("type","danger");
           return "personal/addPersonal";
       }

    }

    // delete
    @RequestMapping(value = "/delete/{id}", produces = "text/html", method = RequestMethod.GET)
    public String deletePersonal(@PathVariable("id") Integer id) {
      try {
          personalService.deletePersonal(id);
          msg = "Запись успешно удалена";
      } catch (Exception e)
      {
          msg = "Не удалось удалить запись";
          type="danger";
      }
        finally {
          return "redirect:/";
      }
    }

    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    public String editPersonal(@ModelAttribute("personal") Personal personal,
                              BindingResult result, Map map) {
        if (result.hasErrors()) {
            msg ="Не удалось отредактировать запись, " + result.getTarget();
            type="danger";
            return "redirect:/";
        }

        try {
            personalService.editPersonal(personal);
            msg ="Запись успешно отредактирована";
        }
        catch (PersonExistException e) {
            msg = e.getMSG();
            type="danger";

        }
        catch (Exception e) {
            msg ="Не удалось отредактировать запись";
            type="danger";

        }
        finally {
            return "redirect:/";
        }


    }



}
