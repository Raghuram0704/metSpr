/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tm.pro.controller;


import java.lang.annotation.Annotation;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;

@Controller
public class LogoutController implements Controller{
    ModelAndView view=new ModelAndView();
    @RequestMapping(value="/logout.htm")
  ModelAndView logout(HttpServletRequest request, HttpServletResponse response)
  {
      view.setViewName("logout");
      request.getSession().invalidate();
      return view;
  }  

    public String value() {
       return "";
    }

    public Class<? extends Annotation> annotationType() {
        throw new UnsupportedOperationException("Not supported yet.");
    }
}
