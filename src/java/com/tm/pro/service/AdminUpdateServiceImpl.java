/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tm.pro.service;

import com.tm.pro.bean.AdminBean;
import com.tm.pro.dao.AdminUpdateDAO;


/**
 *
 * @author techm
 */
public class AdminUpdateServiceImpl implements AdminUpdateService{
private AdminUpdateDAO adminUpdateDAO;
    public String adminUpdate(AdminBean bean) {
        return adminUpdateDAO.adminUpdate(bean);
    }

    public void setAdminUpdateDAO(AdminUpdateDAO adminUpdateDAO) {
        this.adminUpdateDAO = adminUpdateDAO;
    }
    
}
