
package com.tm.pro.dao;

import com.tm.pro.bean.ReqBean;
import com.tm.pro.bean.BookCabBean;
import java.util.Iterator;
import java.util.List;
import org.springframework.orm.hibernate3.HibernateTemplate;

public class BookCabDAOImpl implements BookCabDAO{
private HibernateTemplate ht;
 String bookingId,flag,status;
    public String bookCab(BookCabBean bean) {
       
        List li=ht.find("from ReqBean where booking_id=?",bean.getBookingId());
        Iterator itr=li.iterator();
        System.out.println("getting booking id");
        if(itr.hasNext())
        {
             ReqBean b=(ReqBean)itr.next();
            bookingId=b.getBookingId();
            status=b.getStatus();
           
        }
        if(bookingId.equals(bean.getBookingId()) && status.equals("not paid")){
            flag="valid";
        }

        else if(bookingId.equals(bean.getBookingId()) && status.equals("paid")){
            flag="paid";
        }
        else{
          flag="invalid";  
        }
        return flag;
    }

    public void setHt(HibernateTemplate ht) {
        this.ht = ht;
    }
    
}
