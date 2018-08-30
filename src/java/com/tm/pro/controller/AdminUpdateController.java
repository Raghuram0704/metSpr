
package com.tm.pro.controller;

import com.tm.pro.bean.AdminBean;
import com.tm.pro.service.AdminUpdateService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminUpdateController{
    @Autowired
  private AdminUpdateService adminUpdateService;  
@RequestMapping(value="/adminFeed.htm",method= RequestMethod.POST)
    ModelAndView adminFeedback(@ModelAttribute("cmdFeed") AdminBean bean){
   
        return new ModelAndView("feedbackop");
    
}
@RequestMapping(value="/adminUpdate.htm",method= RequestMethod.POST)
    ModelAndView adminUpdate(@ModelAttribute("cmdAdu") AdminBean bean){
    String flag=adminUpdateService.adminUpdate(bean);
   
       return new ModelAndView("adminup","flag",flag);
   
}
    public void setAdminUpdateService(AdminUpdateService adminUpdateService) {
        this.adminUpdateService = adminUpdateService;
    }

}
