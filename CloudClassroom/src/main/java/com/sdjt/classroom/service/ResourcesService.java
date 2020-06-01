package com.sdjt.classroom.service;

import com.sdjt.classroom.model.Certificate;

public interface ResourcesService {
    Integer getCertificateMaxNo();
    Integer insert_Certificate(Certificate certificate);
}
