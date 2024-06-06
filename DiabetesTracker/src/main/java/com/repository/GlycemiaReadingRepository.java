package com.repository;

import com.model.GlycemiaReading;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface GlycemiaReadingRepository extends JpaRepository<GlycemiaReading, Long> {
    @Query(value = "SELECT * FROM glycemia_reading ORDER BY YEAR(date), WEEK(date), date", nativeQuery = true)
    List<GlycemiaReading> findAllGroupedByWeek();

    @Query(value = "SELECT * FROM glycemia_reading ORDER BY YEAR(date), date limit 2", nativeQuery = true)
    List<GlycemiaReading> findAllGroupedByYear();

}
