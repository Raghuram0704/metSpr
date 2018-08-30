
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
import com.tm.pro.bean.PaymentBean;
import com.tm.pro.bean.ReqBean;
import java.util.Iterator;
import java.util.List;
import org.springframework.orm.hibernate3.HibernateTemplate;

public class PaymentDAOImpl implements PaymentDAO{
private HibernateTemplate ht;
        String bookingId="",carId,flag,city,pickup,drop,cost; 
int count;
    public String payment(PaymentBean bean) {

   
       List li=ht.find("from ReqBean where booking_id=?",bean.getBookingId());
        Iterator itr=li.iterator();
        System.out.println("getting details");
        if(itr.hasNext())
        {
             ReqBean b=(ReqBean)itr.next();
            city=b.getCity();
            pickup=b.getPickup();
            drop=b.getDrop();
        }
        List list4=ht.find("from Metro"+city+"Location where booking_id=?", bean.getBookingId());
        Iterator it=list4.iterator();
        if(city.equals("mumbai")){
        if(it.hasNext()){
            MetromumbaiLocation m=(MetromumbaiLocation)it.next();
          bookingId=m.getBookingId(); 
        }
        }
        else if(city.equals("chennai")){
        if(it.hasNext()){
            MetrochennaiLocation m=(MetrochennaiLocation)it.next();
          bookingId=m.getBookingId(); 
        }
        }
        else if(city.equals("kolkata")){
        if(it.hasNext()){
            MetrokolkataLocation m=(MetrokolkataLocation)it.next();
          bookingId=m.getBookingId(); 
        }
        }
        else if(city.equals("delhi")){
        if(it.hasNext()){
            MetrodelhiLocation m=(MetrodelhiLocation)it.next();
          bookingId=m.getBookingId(); 
        }
        }
        if(bookingId.equals(bean.getBookingId())){
             ht.save(bean);
 String sql="update ReqBean set status='paid' where booking_id=?";
 count=ht.bulkUpdate(sql,bean.getBookingId());
        System.out.println("updated status in metrocab table");
        String sql1="update Metro"+city+"Location set status='unavailable' where booking_id=?";
        count=count+ht.bulkUpdate(sql1, bean.getBookingId());
        System.out.println("updated status in metrolocation table");
 if(count==2){
     System.out.println("update success");
List list=ht.find("from Metro"+city+"Location where booking_id=?",bean.getBookingId());
        Iterator itr1=list.iterator();
        System.out.println("getting booking id");
        if(city.equals("mumbai")){
        if(itr1.hasNext())
        {
             MetromumbaiLocation b=(MetromumbaiLocation)itr1.next();
            carId=Integer.toString(b.getCarId());
            System.out.println(carId);
        }
        }
        else if(city.equals("chennai")){
        if(itr1.hasNext())
        {
             MetrochennaiLocation b=(MetrochennaiLocation)itr1.next();
            carId=Integer.toString(b.getCarId());
            System.out.println(carId);
        }
        }
        else if(city.equals("kolkata")){
        if(itr1.hasNext())
        {
             MetrokolkataLocation b=(MetrokolkataLocation)itr1.next();
            carId=Integer.toString(b.getCarId());
            System.out.println(carId);
        }
        }
        else if(city.equals("delhi")){
        if(itr1.hasNext())
        {
             MetrodelhiLocation b=(MetrodelhiLocation)itr1.next();
            carId=Integer.toString(b.getCarId());
            System.out.println(carId);
        }
        }
 }
 
  List list3=ht.find("from Metro"+city+"Cost where pickup_place=? and destination=?",pickup,drop);
          Iterator itr2=list3.iterator();
          if(city.equals("mumbai")){
          if(itr2.hasNext())
          {
              MetromumbaiCost mc=(MetromumbaiCost)itr2.next();
             cost=mc.getCost();
              System.out.println(cost);
          }
          }
          else if(city.equals("chennai")){
          if(itr2.hasNext())
          {
              MetrochennaiCost mc=(MetrochennaiCost)itr2.next();
             cost=mc.getCost();
              System.out.println(cost);
          }
          }
          else if(city.equals("kolkata")){
          if(itr2.hasNext())
          {
              MetrokolkataCost mc=(MetrokolkataCost)itr2.next();
             cost=mc.getCost();
              System.out.println(cost);
          }
          }
          else if(city.equals("delhi")){
          if(itr2.hasNext())
          {
              MetrodelhiCost mc=(MetrodelhiCost)itr2.next();
             cost=mc.getCost();
              System.out.println(cost);
          }
          }
          List list5=ht.find("from Metro"+city+"Car where car_id=?",carId);
          Iterator itr4=list5.iterator();
          if(city.equals("mumbai")){
          if(itr4.hasNext())
          {
              MetromumbaiCar mc=(MetromumbaiCar)itr4.next();
             
             flag="Car Id: "+mc.getCarId()+"<br>Cab Number: "+mc.getCabNumber()+"<br>Driver Name: "+mc.getDriverName()+"<br>Employee Number: "+mc.getEmployeeNumber()+"<br>Cab Color: "+mc.getCabColor()+"<br>Driver Mobile Number: "+mc.getDriverMobNum()+"<br>Cost: "+cost+"<br><br><br>Now you can get cab details from STATUS<br>";
          }
          }
          else if(city.equals("chennai")){
          if(itr4.hasNext())
          {
              MetrochennaiCar mc=(MetrochennaiCar)itr4.next();
             
             flag="Car Id: "+mc.getCarId()+"<br>Cab Number: "+mc.getCabNumber()+"<br>Driver Name: "+mc.getDriverName()+"<br>Employee Number: "+mc.getEmployeeNumber()+"<br>Cab Color: "+mc.getCabColor()+"<br>Driver Mobile Number: "+mc.getDriverMobNum()+"<br>Cost: "+cost+"<br><br><br>Now you can get cab details from STATUS<br>";
          }
          }
          else if(city.equals("kolkata")){
          if(itr4.hasNext())
          {
              MetrokolkataCar mc=(MetrokolkataCar)itr4.next();
             
             flag="Car Id: "+mc.getCarId()+"<br>Cab Number: "+mc.getCabNumber()+"<br>Driver Name: "+mc.getDriverName()+"<br>Employee Number: "+mc.getEmployeeNumber()+"<br>Cab Color: "+mc.getCabColor()+"<br>Driver Mobile Number: "+mc.getDriverMobNum()+"<br>Cost: "+cost+"<br><br><br>Now you can get cab details from STATUS<br>";
          }
          }
          else if(city.equals("delhi")){
          if(itr4.hasNext())
          {
              MetrodelhiCar mc=(MetrodelhiCar)itr4.next();
             
             flag="Car Id: "+mc.getCarId()+"<br>Cab Number: "+mc.getCabNumber()+"<br>Driver Name: "+mc.getDriverName()+"<br>Employee Number: "+mc.getEmployeeNumber()+"<br>Cab Color: "+mc.getCabColor()+"<br>Driver Mobile Number: "+mc.getDriverMobNum()+"<br>Cost: "+cost+"<br><br><br>Now you can get cab details from STATUS<br>";
          }
          }
        }
        else{
            flag="Payment option Unavailable for you<br>Please request a cab after sometime";
        }
        return flag;
       
    }
    public void setHt(HibernateTemplate ht) {
        this.ht = ht;
    }
    
}
