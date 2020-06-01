package com.sdjt.classroom.model;

public class LearnTimeRecord {
    private Integer id;
    private Integer user_id;
    private Double learn_time;
    private String date;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    public Double getLearn_time() {
        return learn_time;
    }

    public void setLearn_time(Double learn_time) {
        this.learn_time = learn_time;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }
}
