package com.sdjt.classroom.service.impl;

import com.sdjt.classroom.dao.UserMapper;
import com.sdjt.classroom.model.*;
import com.sdjt.classroom.service.UserService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service
@Transactional(rollbackFor = Exception.class)
public class UserServiceImpl implements UserService {
    @Resource
    private UserMapper userMapper;
    @Override
    public boolean user_add(String username, String password) {
        return userMapper.user_add(username, password);
    }

    @Override
    public List<User> userLogin(String username, String password) {
        List<User> hasUser =  userMapper.userLogin(username, password);

            return hasUser;

    }

    @Override
    public List<User> getInfo(Integer id) {
        return userMapper.getInfo(id);
    }

    @Override
    public Integer getUserIdByUsername(String username) {
        return userMapper.getUserIdByUsername(username);
    }

    @Override
    public Integer editInfo(User user) {
        return userMapper.editInfo(user);
    }

    @Override
    public String get_purikura_url(Integer id) {
        return userMapper.get_purikura_url(id);
    }

    @Override
    public Integer changePswd(Integer id, String pswd_old, String pswd_new) {
        return userMapper.changePswd(id, pswd_old, pswd_new);
    }

    @Override
    public List<Certificate> getCertificateById(Integer id) {
        return userMapper.getCertificateById(id);
    }

    @Override
    public List<Course_Stu> getAllCourseIdByStuId(Integer user_id) {
        return userMapper.getAllCourseIdByStuId(user_id);
    }

    @Override
    public Integer enrollCurr(Integer user_id, Integer curr_id) {
        return userMapper.enrollCurr(user_id, curr_id);
    }

    @Override
    public Integer getOrderMaxId() {
        return userMapper.getOrderMaxId();
    }

    @Override
    public Integer eidtMoney(Integer user_id, Double price, Integer type) {
        return userMapper.eidtMoney(user_id, price, type);
    }

    @Override
    public Integer curr_buy_record(Integer record_id, Integer curr_id, Integer user_id,Integer teac_id, Double price) {
        return userMapper.curr_buy_record(record_id, curr_id, user_id,teac_id, price);
    }

    @Override
    public List<Curriculum> getMyCourses(Integer user_id,Integer charge) {
        return userMapper.getMyCourses(user_id,charge);
    }

    @Override
    public Integer giveUpCourse(Integer user_id, Integer curr_id) {
        return userMapper.giveUpCourse(user_id, curr_id);
    }

    @Override
    public Integer makeEarnings(Integer user_id) {
        return userMapper.makeEarnings(user_id);
    }

    @Override
    public Integer updateEarnings(Integer user_id, Double price) {
        return userMapper.updateEarnings(user_id, price);
    }

    @Override
    public List<Curriculum> myBuyCourseRecord(Integer user_id) {
        return userMapper.myBuyCourseRecord(user_id);
    }

    @Override
    public Integer delOrder(Integer order_id) {
        return userMapper.delOrder(order_id);
    }

    @Override
    public List<Notice> getNotice(Integer user_id, Integer limit, Integer page) {
        return userMapper.getNotice(user_id, limit, page);
    }

    @Override
    public Integer getNoticeCount(Integer user_id) {
        return userMapper.getNoticeCount(user_id);
    }

    @Override
    public Integer updateNoticeType(Integer[] notices_id) {
        return userMapper.updateNoticeType(notices_id);
    }

    @Override
    public Integer deleteNotice(Integer[] notices_id) {
        return userMapper.deleteNotice(notices_id);
    }

    @Override
    public Integer changeNoticeType(Integer notice_id) {
        return userMapper.changeNoticeType(notice_id);
    }

    @Override
    public Notice seeNotice(Integer notice_id) {
        return userMapper.seeNotice(notice_id);
    }

    @Override
    public Integer updateLearnTime(Integer user_id, Double learn_time) {
        return userMapper.updateLearnTime(user_id, learn_time);
    }

    @Override
    public String getPercentageOfLearnTime(Double learn_time) {
        return userMapper.getPercentageOfLearnTime(learn_time);
    }

    @Override
    public User getLearnTimeAndAllLearnTimeByUserId(Integer user_id) {
        return userMapper.getLearnTimeAndAllLearnTimeByUserId(user_id);
    }

    @Override
    public Integer getMyCoursesNum(Integer user_id) {
        return userMapper.getMyCoursesNum(user_id);
    }

    @Override
    public List<LearnTimeRecord> getLearnTimeRecordByUserId(Integer user_id) {
        return userMapper.getLearnTimeRecordByUserId(user_id);
    }

    @Override
    public List<User> Email_getUserList(Integer user_id) {
        return userMapper.Email_getUserList(user_id);
    }

    @Override
    public Course_Stu getCourse_StuByUserIdAndCurrId(Integer user_id, Integer curr_id) {
        return userMapper.getCourse_StuByUserIdAndCurrId(user_id, curr_id);
    }
}
