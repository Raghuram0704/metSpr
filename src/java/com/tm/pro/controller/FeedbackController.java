
package com.tm.pro.controller;

import com.tm.pro.bean.FeedbackBean;
import com.tm.pro.service.FeedbackService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FeedbackController {
   @Autowired 
  private FeedbackService feedbackService;  
   @RequestMapping(value="/feedback.htm",method= RequestMethod.POST) 
  ModelAndView feedback(@ModelAttribute("cmdFeed") FeedbackBean bean){
      String flag=feedbackService.feedback(bean);
   return new ModelAndView("feedout","flag",flag);   
  }  

    public void setFeedbackService(FeedbackService feedbackService) {
        this.feedbackService = feedbackService;
    }
   
}
