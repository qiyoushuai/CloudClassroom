package com.sdjt.classroom.service.impl;

import com.sdjt.classroom.dao.ResourcesMapper;
import com.sdjt.classroom.model.Certificate;
import com.sdjt.classroom.service.ResourcesService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

@Service
@Transactional(rollbackFor = Exception.class)
public class ResourcesServiceImpl implements ResourcesService {
    @Resource
    private ResourcesMapper resourcesMapper;

    @Override
    public Integer getCertificateMaxNo() {
        return resourcesMapper.getCertificateMaxNo();
    }

    @Override
    public Integer insert_Certificate(Certificate certificate) {
        return resourcesMapper.insert_Certificate(certificate);
    }
}
