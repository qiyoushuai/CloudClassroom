package com.sdjt.classroom.model;

import java.math.BigDecimal;

public class Curriculum {
    private Integer id;
    private Integer tea_id;
    private String tea_relname;
    private String c_name;
    private String classify;  //课程类别
    private String classify_child;  //课程类别
    private Integer charge;  //是否收费 1收费 2免费
    private Double price;
    private String price_format;
    private Integer state; //课程状态 1可用 2待审核  3不可用
    private BigDecimal popularity;
    private String add_date;
    private String c_describe;  //课程描述
    private String cover_url; //课程封面
    private String enroll_date;   //课程报名日期
    private Integer order_id;  //课程购买订单号

    public String getPrice_format() {
        return price_format;
    }

    public void setPrice_format(String price_format) {
        this.price_format = price_format;
    }

    public Integer getOrder_id() {
        return order_id;
    }

    public void setOrder_id(Integer order_id) {
        this.order_id = order_id;
    }

    public String getEnroll_date() {
        return enroll_date;
    }

    public void setEnroll_date(String enroll_date) {
        this.enroll_date = enroll_date;
    }

    public String getCover_url() {
        return cover_url;
    }

    public void setCover_url(String cover_url) {
        this.cover_url = cover_url;
    }

    public String getC_describe() {
        return c_describe;
    }

    public void setC_describe(String c_describe) {
        this.c_describe = c_describe;
    }

    public String getTea_relname() {
        return tea_relname;
    }

    public void setTea_relname(String tea_relname) {
        this.tea_relname = tea_relname;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getTea_id() {
        return tea_id;
    }

    public void setTea_id(Integer tea_id) {
        this.tea_id = tea_id;
    }

    public String getC_name() {
        return c_name;
    }

    public void setC_name(String c_name) {
        this.c_name = c_name;
    }

    public String getClassify() {
        return classify;
    }

    public void setClassify(String classify) {
        this.classify = classify;
    }

    public String getClassify_child() {
        return classify_child;
    }

    public void setClassify_child(String classify_child) {
        this.classify_child = classify_child;
    }

    public Integer getCharge() {
        return charge;
    }

    public void setCharge(Integer charge) {
        this.charge = charge;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public BigDecimal getPopularity() {
        return popularity;
    }

    public void setPopularity(BigDecimal popularity) {
        this.popularity = popularity;
    }

    public String getAdd_date() {
        return add_date;
    }

    public void setAdd_date(String add_date) {
        this.add_date = add_date;
    }

    public Curriculum() {
    }
}
