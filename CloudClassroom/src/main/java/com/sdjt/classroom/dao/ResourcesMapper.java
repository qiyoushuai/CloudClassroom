package com.sdjt.classroom.dao;

import com.sdjt.classroom.model.Certificate;

public interface ResourcesMapper {
    Integer getCertificateMaxNo();
    Integer insert_Certificate(Certificate certificate);
}
