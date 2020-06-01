package com.sdjt.classroom.dao;

import com.sdjt.classroom.model.*;
import org.apache.commons.fileupload.util.LimitedInputStream;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CurriculumMapper {

    List<Classify_record> get_classifyRecord(@Param("pageIndex") Integer pageIndex,@Param("pageSize") Integer pageSize);

    List<Classify_record> query_classify_record(@Param("pageIndex") Integer pageIndex,@Param("pageSize") Integer pageSize,@Param("text") String text);
    Integer query_getRecord_num(String text);
    Integer getRecord_num();
    Integer classify_del(Integer id);
    Integer getMaxClassify();
    Integer classify_add(@Param("id")Integer id,@Param("title")String title,@Param("field")String superid,@Param("add_userid")Integer add_userid);
    Integer classify_edit(@Param("id") Integer id,@Param("title") String title);
    Integer classify_record(Classify_record record);
    String queryClassify_title(Integer id);

    List<User> userList(@Param("pageIndex") Integer pageIndex,@Param("pageSize") Integer pageSize);
    Integer userCount();
    List<User> queryUser(@Param("pageIndex") Integer pageIndex,@Param("pageSize") Integer pageSize,@Param("text") String text);
    Integer query_userCount(String text);

    User queryUserById(Integer id);
    List<Classify> classifyList_new();
    Integer edit_lock(@Param("id") Integer id , @Param("state") Integer state);
    List<Classify> queryClassiftById(Integer id);  //根据field的id查询

    Classify queryClassify_ById(Integer id);

    Integer edit_type(Integer id,Integer type,Integer certificate);

    //课程
    Integer getCurriculumCount(@Param("state") Integer state);
    List<Curriculum> getCurriculum(@Param("pageIndex") Integer pageIndex,@Param("pageSize") Integer pageSize,@Param("state") Integer state);
    Curriculum getCurriculumById(Integer id);  //根据ID获取课程信息
    List<Certificate_PCLL> getPCLLByCurrId(@Param("curriculum_id") Integer curriculum_id,@Param("pageIndex") Integer pageIndeex,@Param("pageSize") Integer pageSize); //根据课程ID获取相关证书
    Integer getPCLLByCurrIdCount(Integer curriculum_id);

    Integer updateCurriculum_state(Integer id,Integer state); //变更课程的状态state
    List<Curriculum> getCourseList(@Param("text") String text,@Param("state") Integer state,@Param("pageIndex") Integer pageIndex,@Param("pageSize") Integer pageSize);
    Integer getCourseListCount(@Param("text") String text,@Param("state") Integer state);


    List<Curriculum> homePage_getCruuiculum();
    List<Curriculum> homePage_queryCurr(@Param("text") String text,@Param("classify_id") Integer classify_id);
    List<Curriculum> homePage_freeCurr();
    List<Curriculum> homePage_freeCurr_rank();
    List<Curriculum> homePage_noFreeCurr();
    List<Curriculum> homePage_noFreeCurr_rank();

    List<Chapter> getChaptersByCurrId(Integer curr_id);

    Integer addCurrPopularity(Integer curr_id,Integer num);   //增加课程热度
    Integer addUserPopularity(Integer curr_id,Integer num);   //增加教师热度

    Integer addCurrComment(Curr_comment comment);  //添加课程评论
    Integer queryChooseCourseOrNot(Integer user_id,Integer curr_id); //查询用户是否选择了此课程
    List<Curr_comment> getCurrCommentByCurrId(@Param("curr_id") Integer curr_id,@Param("pageIndex") Integer pageIndex,@Param("pageSize") Integer pageSize); //获取课程相应的评论
    Integer getCurrCommentByCurrId_Count(Integer curr_id);
}
