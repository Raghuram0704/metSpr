package com.tm.pro.service;

import com.tm.pro.bean.FeedbackBean;
import com.tm.pro.dao.FeedbackDAO;

public class FeedbackServiceImpl implements FeedbackService{
private FeedbackDAO feedbackDAO;

    public String feedback(FeedbackBean bean) {
       return feedbackDAO.feedback(bean);
    }

    public void setFeedbackDAO(FeedbackDAO feedbackDAO) {
        this.feedbackDAO = feedbackDAO;
    }
    
}
