package com.sdjt.classroom.model;

public class Classify_format {
    private Integer id;
    private String title;
    private Integer field;

    public Classify_format(Integer id, String title, Integer field) {
        this.id = id;
        this.title = title;
        this.field = field;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Integer getField() {
        return field;
    }

    public void setField(Integer field) {
        this.field = field;
    }
}
