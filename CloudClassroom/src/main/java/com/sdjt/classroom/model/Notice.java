package com.sdjt.classroom.model;

public class Notice {
    private Integer id;
    private Integer user_id;
    private String title;
    private String message;
    private Integer type;
    private String send_date;
    private Integer send_user;
    private Integer all_send;
    private String send_name;
    private Integer send_type;
    private String send_username;

    public String getSend_username() {
        return send_username;
    }

    public void setSend_username(String send_username) {
        this.send_username = send_username;
    }

    public String getSend_name() {
        return send_name;
    }

    public void setSend_name(String send_name) {
        this.send_name = send_name;
    }

    public Integer getSend_type() {
        return send_type;
    }

    public void setSend_type(Integer send_type) {
        this.send_type = send_type;
    }

    public Integer getSend_user() {
        return send_user;
    }

    public void setSend_user(Integer send_user) {
        this.send_user = send_user;
    }

    public Integer getAll_send() {
        return all_send;
    }

    public void setAll_send(Integer all_send) {
        this.all_send = all_send;
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

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public String getSend_date() {
        return send_date;
    }

    public void setSend_date(String send_date) {
        this.send_date = send_date;
    }
}
