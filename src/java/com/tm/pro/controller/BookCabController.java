package com.tm.pro.controller;

import com.tm.pro.bean.BookCabBean;
import com.tm.pro.service.BookCabService;
import com.tm.pro.service.BookCabServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BookCabController{
    String bank,page;
    @Autowired
    private BookCabService bookCabService;
    @RequestMapping(value="/bookcab.htm",method= RequestMethod.POST)
   ModelAndView bookCab(@ModelAttribute("cmdBook") BookCabBean bean){
        String flag=bookCabService.bookCab(bean); 
        if(flag.equals("valid")){
        if(bean.getBankName().equalsIgnoreCase("HDFC BANK")){
            bank=bean.getBankName();
            page="payment";
       }
        else if(bean.getBankName().equalsIgnoreCase("AXIS BANK")){
             bank=bean.getBankName();
             page="payment";
        }
            else if(bean.getBankName().equalsIgnoreCase("ICICI BANK")){
                 bank=bean.getBankName();
                 page="payment";
       }
        }
        else if(flag.equals("paid")){
       bank="You have already Paid for your ride";
       page="bookerr";
    }
        else{
           bank="Invalid Booking Id!!!";
       page="bookerr"; 
        }
return new ModelAndView(page,"bank",bank);
    }

    public void setBookCabService(BookCabServiceImpl bookCabService) {
        this.bookCabService = bookCabService;
    }
    
}