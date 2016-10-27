package by.pixar.uvd.web;

import by.pixar.uvd.domain.FormBuilder;
import by.pixar.uvd.domain.FormFields;
import by.pixar.uvd.domain.Rovd;
import by.pixar.uvd.service.RovdService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
public class AjaxController {

    @Autowired
    RovdService rovdService;

    @RequestMapping(value = "/getSearchParam", method = RequestMethod.GET)
    public List<FormBuilder> search() {
        List<FormBuilder> fields = new FormFields().getFields();
        List<FormBuilder> res = new ArrayList<>();
        for (FormBuilder f:fields){
            if (!f.getFieldName().equalsIgnoreCase("birthday") &&
                    !f.getFieldName().equalsIgnoreCase("callOfOVD") &&
                    !f.getFieldName().equalsIgnoreCase("contract") &&
                    !f.getFieldName().equalsIgnoreCase("dateOfCertification") &&
                    !f.getFieldName().equalsIgnoreCase("dateOfGotRank") &&
                    !f.getFieldName().equalsIgnoreCase("classLevelGotDate"))
                res.add(f);
        }
        return res;
    }

    @RequestMapping(value = "/getRovdForSearch", method = RequestMethod.GET)
    public List<Rovd> getRovd(){
        return rovdService.listRovd();
    }

    @RequestMapping(value = "/getFormFields", method = RequestMethod.GET)
    public List<FormBuilder> getFormFields(){
        return new FormFields().getFields();
    }


}
