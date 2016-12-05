package pe.gob.inei.registro.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Erick Gonzales on 6/11/2016
 */
@Controller
public class HomeController {

    @RequestMapping(value = "/index.html", method = RequestMethod.GET)
    public String showHome() {
        return "index";
    }
}
