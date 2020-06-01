package com.sdjt.classroom.model;

public class Curr_comment {
    private Integer id;
    private Integer curr_id;
    private Integer user_id;
    private String context;
    private Integer evaluate;
    private String date;
    private String name;
    private String username;
    private String purikura;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCurr_id() {
        return curr_id;
    }

    public void setCurr_id(Integer curr_id) {
        this.curr_id = curr_id;
    }

    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    public String getContext() {
        return context;
    }

    public void setContext(String context) {
        this.context = context;
    }

    public Integer getEvaluate() {
        return evaluate;
    }

    public void setEvaluate(Integer evaluate) {
        this.evaluate = evaluate;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPurikura() {
        return purikura;
    }

    public void setPurikura(String purikura) {
        this.purikura = purikura;
    }
}
