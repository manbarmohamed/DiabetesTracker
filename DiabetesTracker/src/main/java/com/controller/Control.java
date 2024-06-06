package com.controller;

import com.model.Consiel;
import com.model.GlycemiaReading;
import com.model.Medicament;
import com.model.Ropat;
import com.service.GlycemiaReadingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.sql.SQLException;
import java.util.List;

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
    @GetMapping("/chart")
    public String getGlycemiaReadings(@RequestParam(name = "view", defaultValue = "weekly") String view, ModelMap model) {
        List<GlycemiaReading> glycemiaReadings;
        if ("yearly".equalsIgnoreCase(view)) {
            glycemiaReadings = service.getAllGroupedByYear();
        } else {
            glycemiaReadings = service.getAllGroupedByWeek();
        }
        model.addAttribute("glycemiaReadings", glycemiaReadings);
        model.addAttribute("viewType", view);
        return "TEST";
    }


}
