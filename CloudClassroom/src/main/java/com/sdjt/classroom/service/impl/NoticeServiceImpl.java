package com.sdjt.classroom.service.impl;

import com.sdjt.classroom.dao.NoticeMapper;
import com.sdjt.classroom.model.Notice;
import com.sdjt.classroom.service.NoticeService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

@Service
@Transactional(rollbackFor = Exception.class)
public class NoticeServiceImpl implements NoticeService {
    @Resource
    private NoticeMapper noticeMapper;

    @Override
    public Integer insert_notice(Notice notice) {
        return noticeMapper.insert_notice(notice);
    }
}
