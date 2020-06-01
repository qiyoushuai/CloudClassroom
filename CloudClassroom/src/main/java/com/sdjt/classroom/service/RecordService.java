package com.sdjt.classroom.service;

public interface RecordService {
    //添加每日收入记录
    Integer insertEarningRecord(Integer user_id);
    //添加每日热度增加记录
    Integer insertPopularityRecord(Integer user_id,Integer curr_id);
    //热度记录表
    Integer insertPopularityTable(Integer user_id,Integer curr_id);
    Integer addPopularity( Integer user_id, Integer curr_id);
}
