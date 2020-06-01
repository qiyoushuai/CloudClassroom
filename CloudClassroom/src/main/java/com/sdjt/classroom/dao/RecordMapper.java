package com.sdjt.classroom.dao;

import org.apache.ibatis.annotations.Param;

public interface RecordMapper {
    //添加每日收入记录
    Integer insertEarningRecord(Integer user_id);
    //添加每日热度增加记录
    Integer insertPopularityRecord(@Param("user_id") Integer user_id, @Param("curr_id") Integer curr_id);
    //创建今日热度记录表
    Integer insertPopularityTable(@Param("user_id") Integer user_id,@Param("curr_id") Integer curr_id);
    //今日热度表 热度+1
    Integer addPopularity(@Param("user_id") Integer user_id,@Param("curr_id") Integer curr_id);
}
