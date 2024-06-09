package com.service;

import com.model.Consiel;
import com.model.GlycemiaReading;
import com.model.Medicament;
import com.model.Ropat;
import com.repository.ConsielRepository;
import com.repository.GlycemiaReadingRepository;
import com.repository.MedicamentRepository;
import com.repository.RopatRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import java.util.List;

@Service
public class GlycemiaReadingService {
    @Autowired
    private GlycemiaReadingRepository glycemiaRepository;
    @Autowired
    private ConsielRepository consielRepository;
    @Autowired
    private RopatRepository ropatRepository;
    @Autowired
    private MedicamentRepository medicamentRepository;





    @Transactional(readOnly = true)
    public List<GlycemiaReading> getAllGroupedByWeek() {
        return glycemiaRepository.findAllGroupedByWeek();
    }

    @Transactional(readOnly = true)
    public List<GlycemiaReading> getAllGroupedByMonth() {
        return glycemiaRepository.findAllGroupedByMonth();
    }

    @Transactional(readOnly = true)
    public List<GlycemiaReading> getAllGroupedByYear() {
        return glycemiaRepository.findAllGroupedByYear();
    }

    @Transactional(readOnly = true)
    public List<GlycemiaReading> getByYearAndWeek(int year, int week) {
        return glycemiaRepository.findByYearAndWeek(year, week);
    }

    @Transactional(readOnly = true)
    public List<GlycemiaReading> getByYearAndMonth(int year, int month) {
        return glycemiaRepository.findByYearAndMonth(year, month);
    }

    public void saveGlycemiaReading(GlycemiaReading reading) {
        glycemiaRepository.save(reading);
    }
    public GlycemiaReading getGlycemiaReading(Long id) {
        return glycemiaRepository.getById(id);
    }
    public List<GlycemiaReading> getAllGlycemiaReadings() {
        return glycemiaRepository.findAll();
    }
    public void deleteGlycemiaReading(Long id) {
        glycemiaRepository.deleteById(id);
    }
    public GlycemiaReading recentGlycemiaAndHeartBeat(){
        return glycemiaRepository.findFirstByOrderByDateDescr();
    }
}
