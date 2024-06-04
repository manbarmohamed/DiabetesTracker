package com.service;

import com.model.GlycemiaReading;
import com.repository.GlycemiaReadingRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GlycemiaReadingService {
    @Autowired
    private GlycemiaReadingRepository repository;

    public void saveGlycemiaReading(GlycemiaReading reading) {
        repository.save(reading);
    }
    public GlycemiaReading getGlycemiaReading(Long id) {
        return repository.getById(id);
    }
    public List<GlycemiaReading> getAllGlycemiaReadings() {
        return repository.findAll();
    }
    public void deleteGlycemiaReading(Long id) {
        repository.deleteById(id);
    }
}
