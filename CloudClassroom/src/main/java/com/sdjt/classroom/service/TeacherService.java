package com.sdjt.classroom.service;

import com.sdjt.classroom.model.*;

import java.math.BigDecimal;
import java.util.List;

public interface TeacherService {
    Integer insert_tea_application(Teacher_application application);

    List<Teacher_application> getAllApplication(Integer pageIndex,Integer pageSize);
    Integer getApplicationCount(Integer state);
    List<Teacher_application> queryApplication(Integer pageIndex,Integer pageSize,String data,Integer state);
    Integer queryApplicationCount(String data,Integer state);

    List<Teacher_application> getApplicationByIdAndState(Integer id);
    Teacher_application getApplicationById(Integer id);
    List<Certificate> getCertificateById(Integer id);
    Integer updateApplication(Integer id,Integer state);

     //课程证书
    Integer getCurrMaxId();
    Integer add_PCLL(Integer user_id,Integer curriculum_id,String url);
    Integer apply_OpenClass(Curriculum curriculum);

    List<Curriculum> getCurriculumByTeaId(Integer tea_id);
    List<Curriculum> getCurriculumRecord(Integer tea_id,Integer pageIndex,Integer pageSize);
    Integer getCurriculumRecourdCount(Integer tea_id);

    List<Curriculum> queryCurriculumRecord(Integer tea_id, String text,Integer pageIndex, Integer pageSize);
    Integer queryCurriculumRecordCount(Integer tea_id,String text);

    List<Chapter> getChapterByCurriId(Integer curr_id);
    Integer getChapterByCurrIdCount(Integer curr_id);

    Integer addChapter(Integer curr_id,String cha_name);
    Integer addChapter_sm(Integer pid,String cha_name,Integer curr_id);
    Integer editChapterName(Integer id,String cha_name);
    Integer delChapterById(Integer cha_id);
    Chapter getChapterById(Integer id);
    Integer setChapterUrl(Integer id,String url);
    Integer openAndCloseCurr(Integer id,Integer state,String cover_url);

    List<User> homePage_teacher();

    List<Chapter> queryChapterUrlIsNulll(Integer curr_id);
    List<Chapter> queryChapter_childByCurriId(Integer curr_id);

    Earnings getMyEarning(Integer user_id);
    BigDecimal getTeacOrCurrPopuplarity_today(Integer curr_id, Integer user_id);

    List<Earning_record> getEarning_record(Integer user_id);
    List<Popularity_record> getPopularityRecord(Integer user_id,Integer curr_id);

    //根据课程id 更改课程封面路径
    Integer updateCoverByCurrId(Integer curr_id,String cover_url);

    //根据章节ID获取对应课程下还有多少章节
    Integer getCurr_ChapterNumByChapterId(Integer id);

}
