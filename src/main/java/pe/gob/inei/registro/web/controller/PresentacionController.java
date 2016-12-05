package pe.gob.inei.registro.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import pe.gob.inei.registro.web.controller.base.GenericController;

@Controller
@RequestMapping("/presentacion.html")
public class PresentacionController extends GenericController {

    @RequestMapping(method = RequestMethod.GET)
    public String load() {
        LOGGER.info("################ GET ###############");
        return "presentacion";
    }

    @RequestMapping(method = RequestMethod.POST)
    public String submit() {
        return "presentacion";
    }
}
