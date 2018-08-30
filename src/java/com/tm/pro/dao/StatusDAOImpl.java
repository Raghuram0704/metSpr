/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tm.pro.dao;

import com.tm.pro.bean.MetrochennaiCar;
import com.tm.pro.bean.MetrochennaiCost;
import com.tm.pro.bean.MetrochennaiLocation;
import com.tm.pro.bean.MetrodelhiCar;
import com.tm.pro.bean.MetrodelhiCost;
import com.tm.pro.bean.MetrodelhiLocation;
import com.tm.pro.bean.MetrokolkataCar;
import com.tm.pro.bean.MetrokolkataCost;
import com.tm.pro.bean.MetrokolkataLocation;
import com.tm.pro.bean.MetromumbaiCar;
import com.tm.pro.bean.MetromumbaiCost;
import com.tm.pro.bean.MetromumbaiLocation;
import com.tm.pro.bean.ReqBean;
import com.tm.pro.bean.StatusBean;
import java.util.Iterator;
import java.util.List;
import org.springframework.orm.hibernate3.HibernateTemplate;

public class StatusDAOImpl implements StatusDAO{
HibernateTemplate ht;
String bookingId="",bookId="",flag,city,pickup,drop,flag1="default",pickTime,status,cost; 
int carId;
    public String checkStatus(StatusBean bean) {
        List li=ht.find("from ReqBean where booking_id=?",bean.getBookingId());
        Iterator itr=li.iterator();
        System.out.println("getting booking id");
        if(itr.hasNext())
        {
             ReqBean b=(ReqBean)itr.next();
            bookingId=b.getBookingId();
            city=b.getCity();
            pickTime=b.getTime();
        }
        if(bookingId.equals(bean.getBookingId()))
      {
          System.out.println("valid user");
       List list=ht.find("from ReqBean where booking_id=?",bean.getBookingId());
      Iterator it=list.iterator();
      if(it.hasNext())
      {
          ReqBean bean1=(ReqBean)it.next();
          if(bean1.getBookingId()!=null){
          bookingId=bean1.getBookingId();
          flag=bean1.getStatus();
          }
          
      }
      if(flag.equals("not paid"))
      {
          System.out.println("inside not paid condition");
          List list2=ht.find("from ReqBean where booking_id=?", bookingId);
          Iterator itr1=list2.iterator();
          if(itr1.hasNext())
          {
              ReqBean rb=(ReqBean)itr1.next();
              pickup=rb.getPickup();
              drop=rb.getDrop();
              city=rb.getCity();
              
          }
                List list6=ht.find("from Metro"+city+"Location where booking_id=?", bookingId);
          Iterator itr6=list6.iterator();
          if(city.equals("mumbai")){
          if(itr6.hasNext())
          {
             MetromumbaiLocation m=(MetromumbaiLocation)itr6.next();
             bookId=m.getBookingId();
          }   
          }
           else if(city.equals("chennai")){
          if(itr6.hasNext())
          {
             MetrochennaiLocation m=(MetrochennaiLocation)itr6.next();
             bookId=m.getBookingId();
          }   
          }
             else if(city.equals("kolkata")){
          if(itr6.hasNext())
          {
             MetrokolkataLocation m=(MetrokolkataLocation)itr6.next();
             bookId=m.getBookingId();
          }   
          }
               else if(city.equals("delhi")){
          if(itr6.hasNext())
          {
             MetrodelhiLocation m=(MetrodelhiLocation)itr6.next();
             bookId=m.getBookingId();
          }   
          }
          List list3=ht.find("from Metro"+city+"Cost where pickup_place=? and destination=?",pickup,drop);
          Iterator itr2=list3.iterator();
          if(city.equals("mumbai")){
          if(itr2.hasNext())
          {
              MetromumbaiCost mc=(MetromumbaiCost)itr2.next();
             cost=mc.getCost();
             
          }
          }
          else if(city.equals("chennai")){
          if(itr2.hasNext())
          {
              MetrochennaiCost mc=(MetrochennaiCost)itr2.next();
             cost=mc.getCost();
             
          }
          }
          else if(city.equals("kolkata")){
          if(itr2.hasNext())
          {
              MetrokolkataCost mc=(MetrokolkataCost)itr2.next();
             cost=mc.getCost();
             
          }
          }
          else if(city.equals("delhi")){
          if(itr2.hasNext())
          {
              MetrodelhiCost mc=(MetrodelhiCost)itr2.next();
             cost=mc.getCost();
             
          }
          }
           if(bookId.equals(bean.getBookingId())){
      flag1="Your ride estimate is: "+cost+"<br>Status: Available";
      }else{
             flag1="Your ride estimate is: "+cost+"<br>Status: Unavailable";
        }
      }
           else if(flag.equals("paid"))
      {
          System.out.println("inside paid condition");
          List list4=ht.find("from Metro"+city+"Location where booking_id=?", bookingId);
          Iterator itr3=list4.iterator();
          if(city.equals("mumbai")){
          if(itr3.hasNext())
          {
              MetromumbaiLocation ml=(MetromumbaiLocation)itr3.next();
              carId=ml.getCarId();
          }
          }
            else if(city.equals("chennai")){
          if(itr3.hasNext())
          {
              MetrochennaiLocation ml=(MetrochennaiLocation)itr3.next();
              carId=ml.getCarId();
          }
          }
               else if(city.equals("kolkata")){
          if(itr3.hasNext())
          {
              MetrokolkataLocation ml=(MetrokolkataLocation)itr3.next();
              carId=ml.getCarId();
          }
          }
                  else if(city.equals("delhi")){
          if(itr3.hasNext())
          {
              MetrodelhiLocation ml=(MetrodelhiLocation)itr3.next();
              carId=ml.getCarId();
          }
          }
          List list5=ht.find("from Metro"+city+"Car where car_id=?",carId);
          Iterator itr4=list5.iterator();
          if(city.equals("mumbai")){
          if(itr4.hasNext())
          {
              MetromumbaiCar mc=(MetromumbaiCar)itr4.next();
             
             flag1="Car Id: "+mc.getCarId()+"<br>Cab Number: "+mc.getCabNumber()+"<br>Driver Name: "+mc.getDriverName()+"<br>Employee Number: "+mc.getEmployeeNumber()+"<br>Cab Color: "+mc.getCabColor()+"<br>Driver Mobile Number: "+mc.getDriverMobNum()+"<br>Pickup Time: "+pickTime;
          }
          }
                   else if(city.equals("chennai")){
          if(itr4.hasNext())
          {
              MetrochennaiCar mc=(MetrochennaiCar)itr4.next();
             
             flag1="Car Id: "+mc.getCarId()+"<br>Cab Number: "+mc.getCabNumber()+"<br>Driver Name: "+mc.getDriverName()+"<br>Employee Number: "+mc.getEmployeeNumber()+"<br>Cab Color: "+mc.getCabColor()+"<br>Driver Mobile Number: "+mc.getDriverMobNum()+"<br>Pickup Time: "+pickTime;
          }
          }
                             else if(city.equals("kolkata")){
          if(itr4.hasNext())
          {
              MetrokolkataCar mc=(MetrokolkataCar)itr4.next();
             
             flag1="Car Id: "+mc.getCarId()+"<br>Cab Number: "+mc.getCabNumber()+"<br>Driver Name: "+mc.getDriverName()+"<br>Employee Number: "+mc.getEmployeeNumber()+"<br>Cab Color: "+mc.getCabColor()+"<br>Driver Mobile Number: "+mc.getDriverMobNum()+"<br>Pickup Time: "+pickTime;
          }
          }
                                       else if(city.equals("delhi")){
          if(itr4.hasNext())
          {
              MetrodelhiCar mc=(MetrodelhiCar)itr4.next();
             
             flag1="Car Id: "+mc.getCarId()+"<br>Cab Number: "+mc.getCabNumber()+"<br>Driver Name: "+mc.getDriverName()+"<br>Employee Number: "+mc.getEmployeeNumber()+"<br>Cab Color: "+mc.getCabColor()+"<br>Driver Mobile Number: "+mc.getDriverMobNum()+"<br>Pickup Time: "+pickTime;
          }
          }
      } 
      else if(flag.equals("cancelled")){
          flag1="Sorry no details available for you<br>You have already Cancelled your cab";
      }
      }
        
     else{
            flag1="Invalid booking Id!!!<br>Please enter the valid Booking Id";
        }
       
       return flag1;
    }

    public void setHt(HibernateTemplate ht) {
        this.ht = ht;
    }
    
}
