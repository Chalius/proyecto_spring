package com.empresa.proyecto.controlador;

import java.util.List;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

public class controladorPrincipal {

    @RequestMapping(value = "index")
    public ModelAndView index() {
        ModelAndView mvc = new ModelAndView();
        mvc.setViewName("index");
        return mvc;
    }

}
