/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tm.pro.service;

import com.tm.pro.bean.BookCabBean;
import com.tm.pro.dao.BookCabDAO;

public class BookCabServiceImpl implements BookCabService{
private BookCabDAO bookCabDAO;
    public String bookCab(BookCabBean bean) {
      return bookCabDAO.bookCab(bean);  
    }

    public void setBookCabDAO(BookCabDAO bookCabDAO) {
        this.bookCabDAO = bookCabDAO;
    }
    
}
