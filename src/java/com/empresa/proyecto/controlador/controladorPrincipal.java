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
    
   @RequestMapping(value = "login")
    public ModelAndView login() {
        ModelAndView mvc = new ModelAndView();
        mvc.setViewName("login");
        return mvc;
    }

    
    @RequestMapping(value = "datos_de_usuario")
    public ModelAndView datos_de_usuario() {
        ModelAndView mvc = new ModelAndView();
        mvc.setViewName("datos_de_usuario");
        return mvc;
    }


}
