package com.sdjt.classroom.model;

public class Buy_coures_record {
    private Integer id;
    private Integer curr_id;
    private Integer user_id;
    private Integer teac_id;
    private Double price;
    private String pay_date;

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

    public Integer getTeac_id() {
        return teac_id;
    }

    public void setTeac_id(Integer teac_id) {
        this.teac_id = teac_id;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getPay_date() {
        return pay_date;
    }

    public void setPay_date(String pay_date) {
        this.pay_date = pay_date;
    }
}
