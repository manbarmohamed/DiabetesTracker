package com.repository;

import com.model.Consiel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface ConsielRepository extends JpaRepository<Consiel, Integer> {
    @Query(value = "SELECT c.idConsiel, c.description, c.maxGlycemia, c.minGlycemia, gr.name_patient " +
            "FROM consiel c " +
            "JOIN glycemia_reading gr " +
            "ON c.idConsiel = gr.consiel_idConsiel " +
            "WHERE gr.glycemia BETWEEN c.minGlycemia AND c.maxGlycemia " +
            "AND gr.glycemia = :glycemiaValue", nativeQuery = true)
    List<Object> getConsielByGlycemiaReading(@Param("glycemiaValue") Double glycemiaValue);
}
