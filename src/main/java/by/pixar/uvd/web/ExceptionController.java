package by.pixar.uvd.web;

import org.springframework.transaction.CannotCreateTransactionException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
public class ExceptionController {

    @ExceptionHandler(CannotCreateTransactionException.class)
    public ModelAndView handleAllException(CannotCreateTransactionException e) {

        ModelAndView model = new ModelAndView("/error");
        model.addObject("er", e.getMessage());

        return model;

    }
}
