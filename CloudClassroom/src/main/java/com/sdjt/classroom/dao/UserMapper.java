package com.sdjt.classroom.dao;

import com.sdjt.classroom.model.*;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {
    boolean user_add(@Param("username") String username,@Param("password") String password);
    List<User> userLogin(@Param("username") String username, @Param("password") String password);
    List<User> getInfo(Integer id);
    Integer getUserIdByUsername(String username);
    Integer editInfo(User user);
    String get_purikura_url(Integer id);
    Integer changePswd(@Param("id") Integer id,@Param("pswd_old") String pswd_old,@Param("pswd_new") String pswd_new);
    List<Certificate> getCertificateById(Integer id);
    List<Course_Stu> getAllCourseIdByStuId(Integer user_id);
    Integer enrollCurr(Integer user_id,Integer curr_id);
    Integer getOrderMaxId();
    Integer eidtMoney(@Param("id") Integer user_id,@Param("price") Double price,@Param("type") Integer type); //更改账户余额 1为增加2为减少
    Integer curr_buy_record(Integer record_id,Integer curr_id,Integer user_id,Integer teac_id,Double price);
    List<Curriculum> getMyCourses(@Param("user_id") Integer user_id,@Param("charge") Integer charge);
    Integer giveUpCourse(Integer user_id,Integer curr_id);
    Integer makeEarnings(Integer user_id);
    Integer updateEarnings(Integer user_id,Double price);
    List<Curriculum> myBuyCourseRecord(Integer user_id);
    Integer delOrder(Integer order_id);

    List<Notice> getNotice(@Param("user_id") Integer user_id,@Param("pageSize") Integer limit,@Param("pageIndex") Integer page);
    Integer getNoticeCount(Integer user_id);

    Integer updateNoticeType(@Param("notices_id") Integer[] notices_id);
    Integer deleteNotice(@Param("notices_id")Integer[] notices_id);

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
