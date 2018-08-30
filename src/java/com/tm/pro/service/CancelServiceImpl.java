/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tm.pro.service;

import com.tm.pro.bean.StatusBean;
import com.tm.pro.dao.CancelDAO;


public class CancelServiceImpl implements CancelService{
private CancelDAO cancelDAO;
    public String cancelBooking(StatusBean bean) {
        return cancelDAO.cancelBooking(bean);
    }

    public void setCancelDAO(CancelDAO cancelDAO) {
        this.cancelDAO = cancelDAO;
    }
    
}
