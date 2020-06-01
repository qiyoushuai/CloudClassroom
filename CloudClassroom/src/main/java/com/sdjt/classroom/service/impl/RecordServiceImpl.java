package com.sdjt.classroom.service.impl;

import com.sdjt.classroom.dao.RecordMapper;
import com.sdjt.classroom.dao.ResourcesMapper;
import com.sdjt.classroom.service.RecordService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

@Service
@Transactional(rollbackFor = Exception.class)
public class RecordServiceImpl implements RecordService {
    @Resource
    private RecordMapper recordMapper;
    @Override
    public Integer insertEarningRecord(Integer user_id) {
        return recordMapper.insertEarningRecord(user_id);
    }

    @Override
    public Integer insertPopularityRecord(Integer user_id, Integer curr_id) {
        return recordMapper.insertPopularityRecord(user_id, curr_id);
    }

    @Override
    public Integer insertPopularityTable(Integer user_id, Integer curr_id) {
        return recordMapper.insertPopularityTable(user_id, curr_id);
    }

    @Override
    public Integer addPopularity(Integer user_id, Integer curr_id) {
        return recordMapper.addPopularity(user_id, curr_id);
    }
}
