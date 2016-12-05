package pe.gob.inei.registro.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pe.gob.inei.registro.web.controller.base.GenericController;

@Controller
@RequestMapping("/registro1.html")
public class Registro1Controller extends GenericController {

    @RequestMapping(method = RequestMethod.GET)
    public String load() {
        LOGGER.info("################ GET ###############");
        return "registro1";
    }

    @RequestMapping(method = RequestMethod.POST)
    public String submit() {
        return "registro1";
    }
}
