package com.sdjt.classroom.model;

import com.sdjt.classroom.util.NUMUtil;

public class WebVisits {
    private Integer visits_today;
    private Integer visits_all;
    private String visits_today_format;
    private String visits_all_format;

    public String getVisits_today_format() {
        return visits_today_format;
    }

    public void setVisits_today_format(Integer visits_today) {
        this.visits_today_format = NUMUtil.changeInt(visits_today);
    }

    public String getVisits_all_format() {
        return visits_all_format;
    }

    public void setVisits_all_format(Integer visits_all) {
        this.visits_all_format = NUMUtil.changeInt(visits_all);
    }

    public Integer getVisits_today() {
        return visits_today;
    }

    public void setVisits_today(Integer visits_today) {
        this.visits_today = visits_today;
    }

    public Integer getVisits_all() {
        return visits_all;
    }

    public void setVisits_all(Integer visits_all) {
        this.visits_all = visits_all;
    }
}
