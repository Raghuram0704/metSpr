
package com.tm.pro.controller;

import com.tm.pro.bean.AdminBean;
import com.tm.pro.bean.ReqBean;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

@Controller
@SessionAttributes("userName")
public class AdminLoginController{
    @Autowired
   private HibernateTemplate ht;
    String page,flag="";
    List list;
    ModelAndView view=new ModelAndView();
    @RequestMapping(value="/admin.htm",method= RequestMethod.POST)
    ModelAndView admin(@ModelAttribute("cmdAdmin") AdminBean bean,ReqBean req){
        if(bean.getUsername().equals("admin") && bean.getPassword().equals("admin123")){
          //page="admin";  
          list=ht.loadAll(ReqBean.class);
          view.addObject("userName", bean.getUsername());
          view.addObject("password", bean.getPassword());
          view.addObject("flag",list);
          view.setViewName("admin");          
          return view;
        }
        else{
            page="adminerr";
            flag="Invalid credentials!!";
            return new ModelAndView(page,"flag",flag);
        }
        
    }

    public void setHt(HibernateTemplate ht) {
        this.ht = ht;
    }
    
    
}
