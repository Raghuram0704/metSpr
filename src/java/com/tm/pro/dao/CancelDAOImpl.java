
package com.tm.pro.dao;

import com.tm.pro.bean.ReqBean;
import com.tm.pro.bean.StatusBean;
import java.util.Iterator;
import java.util.List;
import org.springframework.orm.hibernate3.HibernateTemplate;

public class CancelDAOImpl implements CancelDAO{
    private HibernateTemplate ht;

String bookingId="",status="default",city,flag;
int count=0;
    public String cancelBooking(StatusBean bean) {
        List li=ht.find("from ReqBean where booking_id=?",bean.getBookingId());
        Iterator itr=li.iterator();
        System.out.println("getting booking id");
        if(itr.hasNext())
        {
             ReqBean b=(ReqBean)itr.next();
            bookingId=b.getBookingId();
            status=b.getStatus();
            city=b.getCity();
        
       if(bookingId.equals(bean.getBookingId()) && status.equals("cancelled")){
           flag="You have cancelled already"; 
        }
       else if(bookingId.equals(bean.getBookingId()) && status.equals("not paid")){
           flag="Cancel booking is available only for paid users"; 
        }
       else  if(bookingId.equals(bean.getBookingId()) && status.equals("paid"))
      {
         count=ht.bulkUpdate("update Metro"+city+"Location set status='available' where booking_id=?",bookingId);
         count=count+ht.bulkUpdate("update ReqBean set status='cancelled' where booking_id=?",bookingId);
         count=count+ht.bulkUpdate("update PaymentBean set status='cancelled' where booking_id=?", bookingId);
      }
        }
        else{
            flag="invalid booking id";
            
        }
    if(count==3 && status.equals("paid")){
        flag="you successfully cancelled your booking<br>Payment will be refunded within 5 business days"; 
    }
return flag;
    }

    public void setHt(HibernateTemplate ht) {
        this.ht = ht;
    }
}