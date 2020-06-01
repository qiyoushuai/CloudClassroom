package com.sdjt.classroom.model;

public class Classify_record {
    private Integer id;
    private String name_old;
    private String name_new;
    private String type;
    private Integer edit_userid;
    private String edit_date;
    private Integer classify_id;

    public Integer getClassify_id() {
        return classify_id;
    }

    public void setClassify_id(Integer classify_id) {
        this.classify_id = classify_id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName_old() {
        return name_old;
    }

    public void setName_old(String name_old) {
        this.name_old = name_old;
    }

    public String getName_new() {
        return name_new;
    }

    public void setName_new(String name_new) {
        this.name_new = name_new;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Integer getEdit_userid() {
        return edit_userid;
    }

    public void setEdit_userid(Integer edit_userid) {
        this.edit_userid = edit_userid;
    }

    public String getEdit_date() {
        return edit_date;
    }

    public void setEdit_date(String edit_date) {
        this.edit_date = edit_date;
    }
}
