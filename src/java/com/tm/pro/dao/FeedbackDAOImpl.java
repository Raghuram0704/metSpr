
package com.tm.pro.dao;

import com.tm.pro.bean.FeedbackBean;
import com.tm.pro.bean.MetrochennaiLocation;
import com.tm.pro.bean.MetrodelhiLocation;
import com.tm.pro.bean.MetrokolkataLocation;
import com.tm.pro.bean.MetromumbaiLocation;
import com.tm.pro.bean.ReqBean;
import java.util.Iterator;
import java.util.List;
import org.springframework.orm.hibernate3.HibernateTemplate;

public class FeedbackDAOImpl implements FeedbackDAO{
    private HibernateTemplate ht;
String bookingId="",status="",city,flag;
int carId,count=0;
    public String feedback(FeedbackBean bean) {
        
         List li=ht.find("from ReqBean where booking_id=?",bean.getBookingId());
        Iterator itr=li.iterator();
        System.out.println("getting booking id");
        if(itr.hasNext())
        {
             ReqBean b=(ReqBean)itr.next();
            bookingId=b.getBookingId();
            status=b.getStatus();
            city=b.getCity();
        }
        else{
            flag="invalid booking id";
        }
        if(bookingId.equals(bean.getBookingId()) && status.equals("paid"))
      {
          ht.save(bean);
          List list=ht.find("from Metro"+city+"Location where booking_id=?", bean.getBookingId());
           Iterator itr1=list.iterator();
        System.out.println("getting booking id");
        if(city.equals("mumbai")){
        if(itr1.hasNext())
        {
             MetromumbaiLocation ml=(MetromumbaiLocation)itr1.next();
           carId=ml.getCarId();
        }
        }
        else if(city.equals("chennai")){
        if(itr1.hasNext())
        {
             MetrochennaiLocation ml=(MetrochennaiLocation)itr1.next();
           carId=ml.getCarId();
        }
        }
        else if(city.equals("kolkata")){
        if(itr1.hasNext())
        {
             MetrokolkataLocation ml=(MetrokolkataLocation)itr1.next();
           carId=ml.getCarId();
        }
        }
        else if(city.equals("delhi")){
        if(itr1.hasNext())
        {
             MetrodelhiLocation ml=(MetrodelhiLocation)itr1.next();
           carId=ml.getCarId();
        }
        }
         count=ht.bulkUpdate("update FeedbackBean set city=?,car_id=? where booking_id=?",city,carId,bookingId);
              
        if(count==1){
            flag="Thank you for your feedback";
        }else{
            flag="Sorry cannot update your feedback";
        }
      }
        else if(bookingId.equals(bean.getBookingId()) && status.equals("not paid")){
            flag="Feedback available only for paid users";
        }else if(bookingId.equals(bean.getBookingId()) && status.equals("cancelled")){
            flag="You have already cancelled your cab<br>Feedback available only for paid users";
        }
        
        return flag;  
    }

    public void setHt(HibernateTemplate ht) {
        this.ht = ht;
    }
    
}
