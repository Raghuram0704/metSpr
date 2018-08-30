/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tm.pro.dao;

import com.tm.pro.bean.AdminBean;
import com.tm.pro.bean.FeedbackBean;
import java.util.List;
import org.springframework.orm.hibernate3.HibernateTemplate;

public class AdminUpdateDAOImpl implements AdminUpdateDAO{
private HibernateTemplate ht;
    String flag="unable to process";
List list;
    public String adminUpdate(AdminBean bean) {
    if(bean.getStatus()==null){
             int count=ht.bulkUpdate("delete from ReqBean where booking_id=?",bean.getBookingId());
             
            if(count==1){
                flag="Deleted sucessfully";
            }
            else{
                flag="Cannot delete your request";
              }
             return flag;
        }
        else if(bean.getStatus()!=null && bean.getBookingId()!=null){
           
             int count=ht.bulkUpdate("update ReqBean set status=? where booking_id=?",bean.getStatus(),bean.getBookingId());
            if(count==1){
                 flag="updated successfully";
              
            }
            else{
                flag="Cannot update your request";
               
            }
             return flag;
        }
        else{
            
            return flag;
        }
        
    
    }
    public void setHt(HibernateTemplate ht) {
        this.ht = ht;
    }
    
}
