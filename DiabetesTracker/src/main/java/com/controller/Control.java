package com.controller;

import com.service.GlycemiaReadingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import java.sql.SQLException;

@Controller
public class Control {

    @Autowired
     GlycemiaReadingService service;

    @GetMapping("/")
    public String showEtudients(ModelMap modelMap) throws SQLException, ClassNotFoundException {

        modelMap.addAttribute("shows",service.getAllGlycemiaReadings());
        System.out.println(service.getAllGlycemiaReadings());
        return "index";
    }
}
