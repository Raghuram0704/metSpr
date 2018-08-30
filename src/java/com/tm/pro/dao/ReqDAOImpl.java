/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tm.pro.dao;

import com.tm.pro.bean.MetromumbaiLocation;
import com.tm.pro.bean.ReqBean;
import org.springframework.beans.factory.annotation.Autowired;
import java.util.Iterator;
import java.util.List;
import org.springframework.orm.hibernate3.HibernateTemplate;

public class ReqDAOImpl implements ReqDAO{
    @Autowired
   private MetromumbaiLocation metroLocation;
private HibernateTemplate ht;
 
    public String insertReq(ReqBean bean) {
        int ch,count=0;
 String flag="sorry no cars available<br>please try again later";
      ht.save(bean);
      flag="inserted";
        System.out.println(flag);
  List list=ht.loadAll(MetromumbaiLocation.class);
  
  Iterator it=list.iterator();
  while(it.hasNext())
  {
      MetromumbaiLocation loc=(MetromumbaiLocation)it.next();
      flag=loc.getBookingId();
  }
     
        if(bean.getCity().equalsIgnoreCase("delhi"))
        {
            ch=20;
        }
        else
        {
            ch=10;
        }
            
         for(int i=1;i<=ch;i++) {
             int cc=i;
             String sql="update Metro"+bean.getCity()+"Location set booking_id=?,status='available',pickup_date=?,pickup_time=? where car_id=? and status='available' and location=? and service=?";
         
             int c=ht.bulkUpdate(sql,bean.getBookingId(),bean.getDate(),bean.getTime(),cc,bean.getPickup(),bean.getService());
          
             if(c==1)
             {
             flag="Available";
              break;
             }
             else{
                 flag="Unavailable";
             }
             System.out.println(cc);
       }
         return flag;
        }  

    public void setMetroLocation(MetromumbaiLocation metroLocation) {
        this.metroLocation = metroLocation;
    }
    
     

    public void setHt(HibernateTemplate ht) {
        this.ht = ht;
    }
    
}
