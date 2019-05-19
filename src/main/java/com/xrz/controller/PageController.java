package com.xrz.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {
   @RequestMapping(value = "/register")
    public String toRegister(){
       return "register";
   }

    @RequestMapping(value = "/login")
    public String toLogin(){
        return "login";
    }

    @RequestMapping(value = "/addArticle")
    public String toAddArticle(){
        return "addArticle";
    }

}
