package com.sdjt.classroom.service;

import com.sdjt.classroom.model.*;

import java.util.List;

public interface CurriculumService {
    List<Classify_record> get_classifyRecord(Integer pageIndex,Integer pageSize);
    Integer getRecord_num();
    List<Classify_record> query_classify_record(Integer pageIndex, Integer pageSize,String text);
    Integer query_getRecord_num(String text);
    Integer classify_del(Integer id,Classify_record record);
    Integer getMaxClassify();
    Integer classify_add(Integer id,String title, String superid, Integer add_userid, Classify_record record);
    Integer classify_edit(Integer id,String title, Classify_record record);
    String queryClassify_title(Integer id);

    List<User> userList(Integer pageIndex, Integer pageSize);
    Integer userCount();
    List<User> queryUser(Integer pageIndex,Integer pageSize, String text);
    Integer query_userCount(String text);

    User queryUserById(Integer id);
    List<Classify> classifyList_new();
    Integer edit_lock(Integer id ,  Integer state);
    Integer edit_type(Integer id,Integer type,Integer certificate);

    List<Classify> queryClassiftById(Integer id);
    Classify queryClassify_ById(Integer id);

    //课程
    Integer getCurriculumCount(Integer state);
    List<Curriculum> getCurriculum(Integer pageIndex, Integer pageSize, Integer state);
    Curriculum getCurriculumById(Integer id);  //根据ID获取课程信息
    List<Certificate_PCLL> getPCLLByCurrId(Integer curriculum_id,Integer pageIndex,Integer pageSize); //根据课程ID获取相关证书
    Integer getPCLLByCurrIdCount(Integer curriculum_id);
    Integer updateCurriculum_state(Integer id,Integer state); //变更课程的状态state
    List<Curriculum> getCourseList(String text,Integer state,Integer pageIndex,Integer pageSize);
    Integer getCourseListCount(String text,Integer state);

    List<Curriculum> homePage_getCruuiculum();
    List<Curriculum> homePage_queryCurr(String text,Integer classify_id);
    List<Curriculum> homePage_freeCurr();
    List<Curriculum> homePage_freeCurr_rank();
    List<Curriculum> homePage_noFreeCurr();
    List<Curriculum> homePage_noFreeCurr_rank();


    List<Chapter> getChaptersByCurrId(Integer curr_id);

    //增加课程热度
    Integer addCurrPopularity(Integer curr_id,Integer num);
    Integer addUserPopularity(Integer curr_id,Integer num); //增加教师热度

    Integer addCurrComment(Curr_comment comment);  //添加课程评论
    Integer queryChooseCourseOrNot(Integer user_id,Integer curr_id); //查询用户是否选择了此课程
    List<Curr_comment> getCurrCommentByCurrId(Integer curr_id,Integer page,Integer limit); //获取课程相应的评论
    Integer getCurrCommentByCurrId_Count(Integer curr_id);
}
