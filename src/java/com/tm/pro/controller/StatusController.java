
package com.tm.pro.controller;

import com.tm.pro.bean.StatusBean;
import com.tm.pro.service.StatusService;
import com.tm.pro.service.StatusServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class StatusController{
    @Autowired
    private StatusService statusService; 
    @RequestMapping(value="/status.htm",method= RequestMethod.POST)
    ModelAndView status(@ModelAttribute("cmdSta") StatusBean bean){
       String flag=statusService.checkStatus(bean);
        return new ModelAndView("statusout","flag",flag);
    }

    public void setStatusService(StatusServiceImpl statusService) {
        this.statusService = statusService;
    }
    
}