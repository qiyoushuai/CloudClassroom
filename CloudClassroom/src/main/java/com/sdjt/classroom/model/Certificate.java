package com.sdjt.classroom.model;

public class Certificate {
    private Integer id;
    private String TEFL;
    private String diploma;

    public Certificate(Integer id, String TEFL, String diploma) {
        this.id = id;
        this.TEFL = TEFL;
        this.diploma = diploma;
    }

    public Certificate() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTEFL() {
        return TEFL;
    }

    public void setTEFL(String TEFL) {
        this.TEFL = TEFL;
    }

    public String getDiploma() {
        return diploma;
    }

    public void setDiploma(String diploma) {
        this.diploma = diploma;
    }



}
