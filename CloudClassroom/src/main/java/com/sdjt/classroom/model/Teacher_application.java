package com.sdjt.classroom.model;

import java.math.BigDecimal;

public class Teacher_application {
    private Integer id;
    private Integer user_id;
    private String relname;
    private String email;
    private BigDecimal phone;
    private String address;
    private Integer certificate;
    private BigDecimal idcard_no;
    private Integer state;
    private String apply_date;
    private String position;
    private String TEACHING;

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getTEACHING() {
        return TEACHING;
    }

    public void setTEACHING(String TEACHING) {
        this.TEACHING = TEACHING;
    }

    public String getApply_date() {
        return apply_date;
    }

    public void setApply_date(String apply_date) {
        this.apply_date = apply_date;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
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

    public String getRelname() {
        return relname;
    }

    public void setRelname(String relname) {
        this.relname = relname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public BigDecimal getPhone() {
        return phone;
    }

    public void setPhone(BigDecimal phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Integer getCertificate() {
        return certificate;
    }

    public void setCertificate(Integer certificate) {
        this.certificate = certificate;
    }

    public BigDecimal getIdcard_no() {
        return idcard_no;
    }

    public void setIdcard_no(BigDecimal idcard_no) {
        this.idcard_no = idcard_no;
    }
}
