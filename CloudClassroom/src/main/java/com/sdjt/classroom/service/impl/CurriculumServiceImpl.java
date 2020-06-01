package com.sdjt.classroom.service.impl;

import com.sdjt.classroom.dao.CurriculumMapper;
import com.sdjt.classroom.model.*;
import com.sdjt.classroom.service.CurriculumService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;
@Service
@Transactional(rollbackFor = Exception.class)
public class CurriculumServiceImpl implements CurriculumService {
    @Resource
    private CurriculumMapper curriculumMapper;
    @Override
    public List<Classify_record> get_classifyRecord(Integer pageIndex,Integer pageSize) {
        return curriculumMapper.get_classifyRecord(pageIndex,pageSize);
    }

    @Override
    public Integer getRecord_num() {
        return curriculumMapper.getRecord_num();
    }

    @Override
    public List<Classify_record> query_classify_record(Integer pageIndex, Integer pageSize, String text) {
        return curriculumMapper.query_classify_record(pageIndex, pageSize, text);
    }

    @Override
    public Integer query_getRecord_num(String text) {
        return curriculumMapper.query_getRecord_num(text);
    }

    @Override
    public Integer classify_del(Integer id,Classify_record record) {
        Integer go = null;
        Integer delOk = curriculumMapper.classify_del(id);
        Integer recordOk = curriculumMapper.classify_record(record);
        if(delOk>0 && recordOk>0){
            go = 1;
        }
        return go ;
    }

    @Override
    public Integer getMaxClassify() {
        return curriculumMapper.getMaxClassify();
    }

    @Override
    public Integer classify_add(Integer id,String title, String superid, Integer add_userid, Classify_record record) {
        Integer go = null;
        Integer eidt_ok =curriculumMapper.classify_add(id,title,superid,add_userid);
        Integer recordOk = curriculumMapper.classify_record(record);
        if(eidt_ok>0 && recordOk>0){
            go = 1;
        }
        return go ;
    }

    @Override
    public Integer classify_edit(Integer id,String title, Classify_record record) {
        Integer go = null;
        Integer eidt_ok =curriculumMapper.classify_edit(id, title);
        Integer recordOk = curriculumMapper.classify_record(record);
        if(eidt_ok>0 && recordOk>0){
            go = 1;
        }
        return go ;
    }

    @Override
    public String queryClassify_title(Integer id) {
        return curriculumMapper.queryClassify_title(id);
    }

    @Override
    public List<User> userList(Integer pageIndex, Integer pageSize) {
        return curriculumMapper.userList(pageIndex, pageSize);
    }

    @Override
    public Integer userCount() {
        return curriculumMapper.userCount();
    }

    @Override
    public List<User> queryUser(Integer pageIndex, Integer pageSize, String text) {
        return curriculumMapper.queryUser(pageIndex, pageSize, text);
    }

    @Override
    public Integer query_userCount(String text) {
        return curriculumMapper.query_userCount(text);
    }

    @Override
    public User queryUserById(Integer id) {
        return curriculumMapper.queryUserById(id);
    }

    @Override
    public List<Classify> classifyList_new() {
        return curriculumMapper.classifyList_new();
    }

    @Override
    public Integer edit_lock(Integer id, Integer state) {
        return curriculumMapper.edit_lock(id, state);
    }

    @Override
    public Integer edit_type(Integer id, Integer type, Integer certificate) {
        return curriculumMapper.edit_type(id,type,certificate);
    }

    @Override
    public List<Classify> queryClassiftById(Integer id) {
        return curriculumMapper.queryClassiftById(id);
    }

    @Override
    public Classify queryClassify_ById(Integer id) {
        return curriculumMapper.queryClassify_ById(id);
    }

    @Override
    public Integer getCurriculumCount(Integer state) {
        return curriculumMapper.getCurriculumCount(state);
    }

    @Override
    public List<Curriculum> getCurriculum(Integer pageIndex, Integer pageSize, Integer state) {
        return curriculumMapper.getCurriculum(pageIndex, pageSize, state);
    }

    @Override
    public Curriculum getCurriculumById(Integer id) {
        return curriculumMapper.getCurriculumById(id);
    }

    @Override
    public List<Certificate_PCLL> getPCLLByCurrId(Integer curriculum_id,Integer pageIndex,Integer pageSize) {
        return curriculumMapper.getPCLLByCurrId(curriculum_id,pageIndex,pageSize);
    }

    @Override
    public Integer getPCLLByCurrIdCount(Integer curriculum_id) {
        return curriculumMapper.getPCLLByCurrIdCount(curriculum_id);
    }

    @Override
    public Integer updateCurriculum_state(Integer id, Integer state) {
        return curriculumMapper.updateCurriculum_state(id, state);
    }

    @Override
    public List<Curriculum> getCourseList(String text, Integer state, Integer pageIndex, Integer pageSize) {
        return curriculumMapper.getCourseList(text, state, pageIndex, pageSize);
    }

    @Override
    public Integer getCourseListCount(String text, Integer state) {
        return curriculumMapper.getCourseListCount(text, state);
    }

    @Override
    public List<Curriculum> homePage_getCruuiculum() {
        return curriculumMapper.homePage_getCruuiculum();
    }

    @Override
    public List<Curriculum> homePage_queryCurr(String text, Integer classify_id) {
        return curriculumMapper.homePage_queryCurr(text, classify_id);
    }

    @Override
    public List<Curriculum> homePage_freeCurr() {
        return curriculumMapper.homePage_freeCurr();
    }

    @Override
    public List<Curriculum> homePage_freeCurr_rank() {
        return curriculumMapper.homePage_freeCurr_rank();
    }

    @Override
    public List<Curriculum> homePage_noFreeCurr() {
        return curriculumMapper.homePage_noFreeCurr();
    }

    @Override
    public List<Curriculum> homePage_noFreeCurr_rank() {
        return curriculumMapper.homePage_noFreeCurr_rank();
    }

    @Override
    public List<Chapter> getChaptersByCurrId(Integer curr_id) {
        return curriculumMapper.getChaptersByCurrId(curr_id);
    }

    @Override
    public Integer addCurrPopularity(Integer curr_id,Integer num) {
        return curriculumMapper.addCurrPopularity(curr_id,num);
    }

    @Override
    public Integer addUserPopularity(Integer curr_id,Integer num) {
        return curriculumMapper.addUserPopularity(curr_id,num);
    }

    @Override
    public Integer addCurrComment(Curr_comment comment) {
        return curriculumMapper.addCurrComment(comment);
    }

    @Override
    public Integer queryChooseCourseOrNot(Integer user_id, Integer curr_id) {
        return curriculumMapper.queryChooseCourseOrNot(user_id, curr_id);
    }

    @Override
    public  List<Curr_comment> getCurrCommentByCurrId(Integer curr_id,Integer page,Integer limit) {
        return curriculumMapper.getCurrCommentByCurrId(curr_id,page,limit);
    }

    @Override
    public Integer getCurrCommentByCurrId_Count(Integer curr_id) {
        return curriculumMapper.getCurrCommentByCurrId_Count(curr_id);
    }
}
