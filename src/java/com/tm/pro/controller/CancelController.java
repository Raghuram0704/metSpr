
package com.tm.pro.controller;

import com.tm.pro.bean.StatusBean;
import com.tm.pro.service.CancelService;
import com.tm.pro.service.CancelServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CancelController{
    @Autowired
    private CancelService cancelService;
   @RequestMapping(value="/cancel.htm",method= RequestMethod.POST) 
  ModelAndView cancel(@ModelAttribute("cmdCancel") StatusBean bean){
       String flag=cancelService.cancelBooking(bean);
       
      return new ModelAndView("cancelout","flag",flag);
  }  

    public void setCancelService(CancelServiceImpl cancelService) {
        this.cancelService = cancelService;
    }
    
}
