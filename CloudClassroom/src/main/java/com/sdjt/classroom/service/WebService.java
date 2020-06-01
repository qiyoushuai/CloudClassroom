package com.sdjt.classroom.service;

import com.sdjt.classroom.model.Carousel;
import com.sdjt.classroom.model.WebVisits;
import com.sdjt.classroom.model.WebVisitsRecord;

import java.util.List;

public interface WebService {
    Integer addWebVisits();
    Integer selectUserCount();
    Integer selectTeacCount();
    Integer selectCurrCount();
    WebVisits selectVisitsTodayCount();


    List<WebVisitsRecord> getWebVisitsRecord();

    List<Carousel> getCarouselList();
    Integer addCarousel(Carousel carousel);
    Integer delCarousel(Integer id);
}
