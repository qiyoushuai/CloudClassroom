package com.sdjt.classroom.dao;

import com.sdjt.classroom.model.*;
import org.apache.ibatis.annotations.Param;

import java.math.BigDecimal;
import java.util.LinkedList;
import java.util.List;

public interface TeacherMapper {
    Integer insert_tea_application(Teacher_application application);
    List<Teacher_application> getAllApplication(@Param("pageIndex")Integer pageIndex,@Param("pageSize") Integer pageSize);
    List<Teacher_application> queryApplication(@Param("pageIndex") Integer pageIndex,@Param("pageSize") Integer pageSize,@Param("data") String data,@Param("state")Integer state);
    Integer queryApplicationCount(@Param("data")String data,@Param("state")Integer state);
    Integer getApplicationCount(@Param("state") Integer state);
    Teacher_application getApplicationById(Integer id);
    List<Certificate> getCertificateById(Integer id);
    Integer updateApplication(@Param("id") Integer id,@Param("state") Integer state);

    List<Teacher_application> getApplicationByIdAndState(@Param("id") Integer id);  //获取用户是否有教师资格审核的进程

    //课程证书
    Integer getCurrMaxId();
    Integer add_PCLL(@Param("user_id") Integer user_id,@Param("curriculum_id")Integer curriculum_id,@Param("url") String url);
    Integer apply_OpenClass(Curriculum curriculum);

    //根据教师id获取课程列表,查询到的课程为除了 审核中 和不通过的课程
    List<Curriculum> getCurriculumByTeaId(Integer tea_id);

    //根据教师id获取课程列表,查询到的课程为所有课程 用于查询申请记录的回显
    List<Curriculum> getCurriculumRecord(@Param("tea_id") Integer tea_id,@Param("pageIndex") Integer pageIndex,@Param("pageSize") Integer pageSize);
    Integer getCurriculumRecourdCount(Integer tea_id);

    List<Curriculum> queryCurriculumRecord(@Param("tea_id") Integer tea_id,@Param("text") String text,@Param("pageIndex") Integer pageIndex,@Param("pageSize") Integer pageSize);
    Integer queryCurriculumRecordCount(Integer tea_id,String text);

    List<Chapter> getChapterByCurriId(Integer curr_id);
    Integer getChapterByCurrIdCount(Integer curr_id);

    Integer addChapter(Integer curr_id,String cha_name);
    Integer addChapter_sm(Integer pid,String cha_name,Integer curr_id);
    Integer editChapterName(Integer id,String cha_name);
    Integer delChapterById(Integer cha_id);
    Chapter getChapterById(Integer id);
    Integer setChapterUrl(@Param("id") Integer id,@Param("url") String url);
    Integer openAndCloseCurr(@Param("id") Integer id,@Param("state") Integer state,@Param("cover_url") String cover_url);


    List<User> homePage_teacher();
    List<Chapter> queryChapterUrlIsNulll(Integer curr_id);
    List<Chapter> queryChapter_childByCurriId(Integer curr_id);

    Earnings getMyEarning(Integer user_id);
    BigDecimal getTeacOrCurrPopuplarity_today(@Param("curr_id") Integer curr_id,@Param("user_id") Integer user_id);

    List<Earning_record> getEarning_record(Integer user_id);
    List<Popularity_record> getPopularityRecord(@Param("user_id") Integer user_id,@Param("curr_id") Integer curr_id);
    //根据课程id 更改课程封面路径
    Integer updateCoverByCurrId(Integer curr_id,String cover_url);

    Integer getCurr_ChapterNumByChapterId(Integer id);

}
