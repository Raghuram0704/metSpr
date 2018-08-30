/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tm.pro.service;

import com.tm.pro.bean.StatusBean;
import com.tm.pro.dao.StatusDAO;

public class StatusServiceImpl implements StatusService{
private StatusDAO statusDAO;
    public String checkStatus(StatusBean bean) {
      return statusDAO.checkStatus(bean);  
    }

    public void setStatusDAO(StatusDAO statusDAO) {
        this.statusDAO = statusDAO;
    }
    
}
