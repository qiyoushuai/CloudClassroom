package com.sdjt.classroom.model;

import java.math.BigDecimal;

public class Popularity_record {
    private Integer id;
    private Integer user_id;
    private Integer curr_id;
    private BigDecimal popularity;
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

    public Integer getCurr_id() {
        return curr_id;
    }

    public void setCurr_id(Integer curr_id) {
        this.curr_id = curr_id;
    }

    public BigDecimal getPopularity() {
        return popularity;
    }

    public void setPopularity(BigDecimal popularity) {
        this.popularity = popularity;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }
}
