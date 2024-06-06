package com.service;

import com.model.Consiel;
import com.repository.ConsielRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ConsielService {
    @Autowired
    private ConsielRepository consielRepository;

    public List<Consiel> getConsiels() {
        return consielRepository.findAll();
    }

    public List<Object> getConsielByGlycemia(Double glycemia) {
        return consielRepository.getConsielByGlycemiaReading(glycemia);
    }
}
