package com.sdjt.classroom.service.impl;

import com.sdjt.classroom.dao.TeacherMapper;
import com.sdjt.classroom.model.*;
import com.sdjt.classroom.service.TeacherService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.math.BigDecimal;
import java.util.List;

@Service
@Transactional(rollbackFor = Exception.class)
public class TeacherServiceImpl implements TeacherService {
    @Resource
    private TeacherMapper teacherMapper;

    @Override
    public Integer insert_tea_application(Teacher_application application) {
        return teacherMapper.insert_tea_application(application);
    }

    @Override
    public List<Teacher_application> getAllApplication(Integer pageIndex,Integer pageSize) {
        return teacherMapper.getAllApplication(pageIndex, pageSize);
    }

    @Override
    public List<Teacher_application> queryApplication(Integer pageIndex, Integer pageSize, String data,Integer state) {
        return teacherMapper.queryApplication(pageIndex, pageSize, data,state);
    }

    @Override
    public Integer queryApplicationCount(String data,Integer state) {
        return teacherMapper.queryApplicationCount(data,state);
    }

    @Override
    public Integer getApplicationCount(Integer state) {
        return teacherMapper.getApplicationCount(state);
    }

    @Override
    public List<Teacher_application> getApplicationByIdAndState(Integer id) {
        return teacherMapper.getApplicationByIdAndState(id);
    }

    @Override
    public Teacher_application getApplicationById(Integer id) {
        return teacherMapper.getApplicationById(id);
    }

    @Override
    public List<Certificate> getCertificateById(Integer id) {
        return teacherMapper.getCertificateById(id);
    }

    @Override
    public Integer updateApplication(Integer id, Integer state) {
        return teacherMapper.updateApplication(id, state);
    }

    @Override
    public Integer getCurrMaxId() {
        return teacherMapper.getCurrMaxId();
    }

    @Override
    public Integer add_PCLL( Integer user_id,Integer curriculum_id,  String url) {
        return teacherMapper.add_PCLL(user_id,curriculum_id, url);
    }

    @Override
    public Integer apply_OpenClass(Curriculum curriculum) {
        return teacherMapper.apply_OpenClass(curriculum);
    }

    @Override
    public List<Curriculum> getCurriculumByTeaId(Integer tea_id) {
        return teacherMapper.getCurriculumByTeaId(tea_id);
    }

    @Override
    public List<Curriculum> getCurriculumRecord(Integer tea_id,Integer pageIndex,Integer pageSize) {
        return teacherMapper.getCurriculumRecord(tea_id,pageIndex,pageSize);
    }

    @Override
    public Integer getCurriculumRecourdCount(Integer tea_id) {
        return teacherMapper.getCurriculumRecourdCount(tea_id);
    }

    @Override
    public List<Curriculum> queryCurriculumRecord(Integer tea_id, String text, Integer pageIndex, Integer pageSize) {
        return teacherMapper.queryCurriculumRecord(tea_id, text, pageIndex, pageSize);
    }

    @Override
    public Integer queryCurriculumRecordCount(Integer tea_id, String text) {
        return teacherMapper.queryCurriculumRecordCount(tea_id, text);
    }

    @Override
    public List<Chapter> getChapterByCurriId(Integer curr_id) {
        return teacherMapper.getChapterByCurriId(curr_id);
    }

    @Override
    public Integer getChapterByCurrIdCount(Integer curr_id) {
        return teacherMapper.getChapterByCurrIdCount(curr_id);
    }

    @Override
    public Integer addChapter(Integer curr_id, String cha_name) {
        return teacherMapper.addChapter(curr_id, cha_name);
    }

    @Override
    public Integer addChapter_sm(Integer pid, String cha_name, Integer curr_id) {
        return teacherMapper.addChapter_sm(pid, cha_name, curr_id);
    }

    @Override
    public Integer editChapterName(Integer id, String cha_name) {
        return teacherMapper.editChapterName(id, cha_name);
    }

    @Override
    public Integer delChapterById(Integer cha_id) {
        return teacherMapper.delChapterById(cha_id);
    }

    @Override
    public Chapter getChapterById(Integer id) {
        return teacherMapper.getChapterById(id);
    }

    @Override
    public Integer setChapterUrl(Integer id, String url) {
        return teacherMapper.setChapterUrl(id, url);
    }

    @Override
    public Integer openAndCloseCurr(Integer id, Integer state, String cover_url) {
        return teacherMapper.openAndCloseCurr(id, state, cover_url);
    }

    @Override
    public List<User> homePage_teacher() {
        return teacherMapper.homePage_teacher();
    }

    @Override
    public List<Chapter> queryChapterUrlIsNulll(Integer curr_id) {
        return teacherMapper.queryChapterUrlIsNulll(curr_id);
    }

    @Override
    public List<Chapter> queryChapter_childByCurriId(Integer curr_id) {
        return teacherMapper.queryChapter_childByCurriId(curr_id);
    }

    @Override
    public Earnings getMyEarning(Integer user_id) {
        return teacherMapper.getMyEarning(user_id);
    }

    @Override
    public BigDecimal getTeacOrCurrPopuplarity_today(Integer curr_id, Integer user_id) {
        return teacherMapper.getTeacOrCurrPopuplarity_today(curr_id, user_id);
    }

    @Override
    public List<Earning_record> getEarning_record(Integer user_id) {
        return teacherMapper.getEarning_record(user_id);
    }

    @Override
    public List<Popularity_record> getPopularityRecord(Integer user_id, Integer curr_id) {
        return teacherMapper.getPopularityRecord(user_id, curr_id);
    }

    @Override
    public Integer updateCoverByCurrId(Integer curr_id, String cover_url) {
        return teacherMapper.updateCoverByCurrId(curr_id, cover_url);
    }

    @Override
    public Integer getCurr_ChapterNumByChapterId(Integer id) {
        return teacherMapper.getCurr_ChapterNumByChapterId(id);
    }


}
