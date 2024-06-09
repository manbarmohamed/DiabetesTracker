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

    @Query(value = "SELECT * FROM glycemia_reading ORDER BY YEAR(date), MONTH(date), date", nativeQuery = true)
    List<GlycemiaReading> findAllGroupedByMonth();

    @Query(value = "SELECT * FROM glycemia_reading ORDER BY YEAR(date), date", nativeQuery = true)
    List<GlycemiaReading> findAllGroupedByYear();

    @Query(value = "SELECT * FROM glycemia_reading WHERE YEAR(date) = ?1 AND WEEK(date) = ?2 ORDER BY date", nativeQuery = true)
    List<GlycemiaReading> findByYearAndWeek(int year, int week);

    @Query(value = "SELECT * FROM glycemia_reading WHERE YEAR(date) = ?1 AND MONTH(date) = ?2 ORDER BY date", nativeQuery = true)
    List<GlycemiaReading> findByYearAndMonth(int year, int month);

    @Query(value = "select * from glycemia_reading order by date desc limit 1", nativeQuery = true)
    GlycemiaReading findFirstByOrderByDateDescr();
}
