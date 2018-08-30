/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tm.pro.service;

import com.tm.pro.bean.PaymentBean;
import com.tm.pro.dao.PaymentDAO;

/**
 *
 * @author techm
 */
public class PaymentServiceImpl implements PaymentService{
private PaymentDAO paymentDAO;
    public String payment(PaymentBean bean) {
        return paymentDAO.payment(bean);
                }

    public void setPaymentDAO(PaymentDAO paymentDAO) {
        this.paymentDAO = paymentDAO;
    }
    
}
