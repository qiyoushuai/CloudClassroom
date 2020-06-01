package com.sdjt.classroom.service;

import com.sdjt.classroom.model.*;
import org.springframework.stereotype.Service;

import java.util.List;

public interface UserService {
    boolean user_add(String username,String password);
    List<User> userLogin(String username, String password);
    List<User> getInfo(Integer id);
    Integer getUserIdByUsername(String username);
    Integer editInfo(User user);
    String get_purikura_url(Integer id);
    Integer changePswd(Integer id,String pswd_old,String pswd_new);
    List<Certificate> getCertificateById(Integer id);
    List<Course_Stu> getAllCourseIdByStuId(Integer user_id);
    Integer enrollCurr(Integer user_id,Integer curr_id);
    Integer getOrderMaxId();
    Integer eidtMoney(Integer user_id,Double price,Integer type);
    Integer curr_buy_record(Integer record_id,Integer curr_id,Integer user_id,Integer teac_id,Double price);
    List<Curriculum> getMyCourses(Integer user_id,Integer charge);
    Integer giveUpCourse(Integer user_id,Integer curr_id);

    Integer makeEarnings(Integer user_id);
    Integer updateEarnings(Integer user_id,Double price);

    List<Curriculum> myBuyCourseRecord(Integer user_id);
    Integer delOrder(Integer order_id);


    List<Notice> getNotice(Integer user_id, Integer limit, Integer page);
    Integer getNoticeCount(Integer user_id);

    Integer updateNoticeType(Integer[] notices_id);
    Integer deleteNotice(Integer[] notices_id);
    Integer changeNoticeType(Integer notice_id);
    Notice seeNotice(Integer notice_id);
    Integer updateLearnTime(Integer user_id,Double learn_time);
    String getPercentageOfLearnTime(Double learn_time);
    User getLearnTimeAndAllLearnTimeByUserId(Integer user_id);
    Integer getMyCoursesNum(Integer user_id);
    List<LearnTimeRecord> getLearnTimeRecordByUserId(Integer user_id);
    List<User> Email_getUserList(Integer user_id);
    Course_Stu getCourse_StuByUserIdAndCurrId(Integer user_id,Integer curr_id);
}
