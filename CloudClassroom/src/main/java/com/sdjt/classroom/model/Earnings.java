package com.sdjt.classroom.model;

import java.text.DecimalFormat;

public class Earnings {
    private Integer id;
    private Integer user_id;
    private Double earnings_today;
    private Double total_revenue;
    private String earnings_today_format;
    private String total_revenue_format;

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

    public Double getEarnings_today() {
        return earnings_today;
    }

    public void setEarnings_today(Double earnings_today) {
        this.earnings_today = earnings_today;
    }

    public Double getTotal_revenue() {
        return total_revenue;
    }

    public void setTotal_revenue(Double total_revenue) {
        this.total_revenue = total_revenue;
    }

    public String getEarnings_today_format() {
        return earnings_today_format;
    }

    public void setEarnings_today_format(Double earnings_today) {
        DecimalFormat df = new DecimalFormat("#,##0.00");
        this.earnings_today_format = df.format(earnings_today);
    }

    public String getTotal_revenue_format() {
        return total_revenue_format;
    }

    public void setTotal_revenue_format(Double total_revenue) {
        DecimalFormat df = new DecimalFormat("#,##0.00");
        this.total_revenue_format = df.format(total_revenue);
    }
}
