package com.sdjt.classroom.model;

import java.util.List;

public class Chapter {
    private Integer id;
    private String cha_name;
    private Integer curr_id;
    private Integer pid;
    private String url;
    private List<Chapter> chapter_child;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCha_name() {
        return cha_name;
    }

    public void setCha_name(String cha_name) {
        this.cha_name = cha_name;
    }

    public Integer getCurr_id() {
        return curr_id;
    }

    public void setCurr_id(Integer curr_id) {
        this.curr_id = curr_id;
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public List<Chapter> getChapter_child() {
        return chapter_child;
    }

    public void setChapter_child(List<Chapter> chapter_child) {
        this.chapter_child = chapter_child;
    }
}
