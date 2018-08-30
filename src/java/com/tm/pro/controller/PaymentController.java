
package com.tm.pro.controller;

import com.tm.pro.bean.PaymentBean;
import com.tm.pro.service.PaymentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PaymentController{

    @Autowired
    private PaymentService paymentService;
    
    @RequestMapping(value="/payment.htm",method=RequestMethod.POST)
    ModelAndView payment(@ModelAttribute("cmdPayment") PaymentBean bean){
        String flag=paymentService.payment(bean);
        return new ModelAndView("bookcabout","flag",flag);
    }

    public void setPaymentService(PaymentService paymentService) {
        this.paymentService = paymentService;
    }
    
}
