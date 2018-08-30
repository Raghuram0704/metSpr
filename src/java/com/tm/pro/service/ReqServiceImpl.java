
package com.tm.pro.service;

import com.tm.pro.bean.ReqBean;
import com.tm.pro.dao.ReqDAO;

public class ReqServiceImpl implements ReqService{
private ReqDAO reqDAO;
    public String insertReq(ReqBean bean) {
     return reqDAO.insertReq(bean); 
    }

    public void setReqDAO(ReqDAO reqDAO) {
        this.reqDAO = reqDAO;
    }
    
}
