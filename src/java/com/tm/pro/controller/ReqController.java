
package com.tm.pro.controller;

import com.tm.pro.bean.ReqBean;
import com.tm.pro.service.ReqService;
import com.tm.pro.service.ReqServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ReqController{
    @Autowired
  private ReqService reqService; 
@RequestMapping(value="/insert.htm",method= RequestMethod.POST)
ModelAndView insertReq(@ModelAttribute("cmdReq") ReqBean bean){
    String flag=reqService.insertReq(bean);
return new ModelAndView("reqcabop","flag",flag);
    }

    public void setReqService(ReqServiceImpl reqService) {
        this.reqService = reqService;
    }
}
