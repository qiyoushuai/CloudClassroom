package com.sdjt.classroom.model;

public class Certificate_PCLL {
    private  Integer id;
    private  Integer user_id;
    private Integer curriculum_id;
    private String url;
    private String cer_name;

    public String getCer_name() {
        return cer_name;
    }

    public void setCer_name(String cer_name) {
        this.cer_name = cer_name;
    }

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

    public Integer getCurriculum_id() {
        return curriculum_id;
    }

    public void setCurriculum_id(Integer curriculum_id) {
        this.curriculum_id = curriculum_id;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
}
