package com.sdjt.classroom.service.impl;

import com.sdjt.classroom.dao.WebMapper;
import com.sdjt.classroom.model.Carousel;
import com.sdjt.classroom.model.WebVisits;
import com.sdjt.classroom.model.WebVisitsRecord;
import com.sdjt.classroom.service.WebService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class WebServiceImpl implements WebService {
    @Resource
    private WebMapper webMapper;

    @Override
    public Integer addWebVisits() {
        return webMapper.addWebVisits();
    }

    @Override
    public Integer selectUserCount() {
        return webMapper.selectUserCount();
    }

    @Override
    public Integer selectTeacCount() {
        return webMapper.selectTeacCount();
    }

    @Override
    public Integer selectCurrCount() {
        return webMapper.selectCurrCount();
    }

    @Override
    public WebVisits selectVisitsTodayCount() {
        return webMapper.selectVisitsTodayCount();
    }

    @Override
    public List<WebVisitsRecord> getWebVisitsRecord() {
        return webMapper.getWebVisitsRecord();
    }

    @Override
    public List<Carousel> getCarouselList() {
        return webMapper.getCarouselList();
    }

    @Override
    public Integer addCarousel(Carousel carousel) {
        return webMapper.addCarousel(carousel);
    }

    @Override
    public Integer delCarousel(Integer id) {
        return webMapper.delCarousel(id);
    }
}
