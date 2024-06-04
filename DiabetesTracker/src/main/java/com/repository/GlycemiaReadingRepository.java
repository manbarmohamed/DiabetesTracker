package com.repository;

import com.model.GlycemiaReading;
import org.springframework.data.convert.ReadingConverter;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface GlycemiaReadingRepository extends JpaRepository<GlycemiaReading, Long> {
}
