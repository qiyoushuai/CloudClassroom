package com.sdjt.classroom.model;

import java.util.List;

public class Classify {
    private Integer id;
    private String title;
    private String field;
    private Boolean spread;
    private List<Classify> children;

    public Boolean getSpread() {
        return spread;
    }

    public void setSpread(Boolean spread) {
        this.spread = spread;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getField() {
        return field;
    }

    public void setField(String field) {
        this.field = field;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public List<Classify> getChildren() {
        return children;
    }

    public void setChildren(List<Classify> children) {
        this.children = children;
    }
}
