package by.pixar.uvd.web;

import by.pixar.uvd.domain.Users;
import by.pixar.uvd.exceptions.UserExistException;
import by.pixar.uvd.service.RovdService;
import by.pixar.uvd.service.UserService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.InputStreamResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Map;

@Controller
public class FileLogController {


    @RequestMapping(value = "/download/{file_name}", method = RequestMethod.GET)
    public ResponseEntity<InputStreamResource> downloadStuff(@PathVariable("file_name") String fileName)
            throws IOException {

        File file = new File("c:\\LOGs\\"  + fileName+".txt");

        HttpHeaders respHeaders = new HttpHeaders();
        respHeaders.setContentType(MediaType.valueOf("application/txt"));
        respHeaders.setContentDispositionFormData("attachment", fileName+".txt");

        InputStreamResource inputStreamResource = new InputStreamResource(new FileInputStream(file));
        return new ResponseEntity<InputStreamResource>(inputStreamResource, respHeaders, HttpStatus.OK);
    }




}
