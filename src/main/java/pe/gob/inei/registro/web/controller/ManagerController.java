package pe.gob.inei.registro.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Erick Gonzales on 6/11/2016
 */
@Controller
public class ManagerController {

    @RequestMapping(value = "404.html", method = RequestMethod.GET)
    public String show404() {
        return "404";
    }

    @RequestMapping(value = "error.html", method = RequestMethod.GET)
    public String showError() {
        return "error";
    }
}
