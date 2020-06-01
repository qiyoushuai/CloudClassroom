package com.sdjt.classroom.model;


import java.math.BigDecimal;

public class User {
    private Integer id;
    private String username;
    private String password;
    private String name;   //昵称
    private Integer sex;
    private String address;
    private BigDecimal phone;
    private String email;
    private String add_date;
    private Double money;
    private Integer type;
    private Integer state;   //账号状态  1可用  2待审核  3不可用
    private String certificate;    //（教师）相关专业证书图片存放路径
    private BigDecimal popularity;   //受欢迎度
    private String relname;  //真实姓名
    private String profile;
    private String purikura;
    private Double learn_time;
    private Double learn_time_all;

    public Double getLearn_time() {
        return learn_time;
    }

    public void setLearn_time(Double learn_time) {
        this.learn_time = learn_time;
    }

    public Double getLearn_time_all() {
        return learn_time_all;
    }

    public void setLearn_time_all(Double learn_time_all) {
        this.learn_time_all = learn_time_all;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", name='" + name + '\'' +
                ", sex=" + sex +
                ", address='" + address + '\'' +
                ", phone=" + phone +
                ", email='" + email + '\'' +
                ", add_date='" + add_date + '\'' +
                ", money=" + money +
                ", type=" + type +
                ", state=" + state +
                ", certificate='" + certificate + '\'' +
                ", popularity=" + popularity +
                ", relname='" + relname + '\'' +
                ", profile='" + profile + '\'' +
                ", purikura='" + purikura + '\'' +
                '}';
    }

    public String getRelname() {
        return relname;
    }

    public void setRelname(String relname) {
        this.relname = relname;
    }

    public String getProfile() {
        return profile;
    }

    public void setProfile(String profile) {
        this.profile = profile;
    }

    public String getPurikura() {
        return purikura;
    }

    public void setPurikura(String purikura) {
        this.purikura = purikura;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getSex() {
        return sex;
    }

    public void setSex(Integer sex) {
        this.sex = sex;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }


    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAdd_date() {
        return add_date;
    }

    public void setAdd_date(String add_date) {
        this.add_date = add_date;
    }

    public Double getMoney() {
        return money;
    }

    public void setMoney(Double money) {
        this.money = money;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public String getCertificate() {
        return certificate;
    }

    public void setCertificate(String certificate) {
        this.certificate = certificate;
    }

    public BigDecimal getPhone() {
        return phone;
    }

    public void setPhone(BigDecimal phone) {
        this.phone = phone;
    }

    public BigDecimal getPopularity() {
        return popularity;
    }

    public void setPopularity(BigDecimal popularity) {
        this.popularity = popularity;
    }

    public User() {
    }
}
