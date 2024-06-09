package com.controller;

import com.model.Consiel;
import com.model.GlycemiaReading;
import com.service.ConsielService;
import com.service.GlycemiaReadingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class Control {

    @Autowired
    private GlycemiaReadingService service;
    @Autowired
    private ConsielService consielService;

    @GetMapping("/")
    public String showHome(@RequestParam(name = "view", defaultValue = "weekly") String view,
                                @RequestParam(name = "year", required = false) Integer year,
                                @RequestParam(name = "month", required = false) Integer month,
                                @RequestParam(name = "week", required = false) Integer week,
                                ModelMap modelMap) {

        List<GlycemiaReading> glycemiaReadings;

        if ("yearly".equalsIgnoreCase(view)) {
            glycemiaReadings = service.getAllGroupedByYear();
        } else if ("monthly".equalsIgnoreCase(view)) {
            if (year != null && month != null) {
                glycemiaReadings = service.getByYearAndMonth(year, month);
            } else {
                glycemiaReadings = service.getAllGroupedByMonth();
            }
        } else { // default to weekly
            if (year != null && week != null) {
                glycemiaReadings = service.getByYearAndWeek(year, week);
            } else {
                glycemiaReadings = service.getAllGroupedByWeek();
            }
        }

        modelMap.addAttribute("glycemiaReadings", glycemiaReadings);
        modelMap.addAttribute("viewType", view);
        modelMap.addAttribute("selectedYear", year);
        modelMap.addAttribute("selectedMonth", month);
        modelMap.addAttribute("selectedWeek", week);
        modelMap.addAttribute("shows", service.getAllGlycemiaReadings());
        modelMap.addAttribute("recenGlycemiaAndHeartBeat",service.recentGlycemiaAndHeartBeat());
        return "home";
    }

    @GetMapping(value = "/delete/{id}")
    public String deleteGlycemiaReading(@PathVariable("id") Long id) {
        service.deleteGlycemiaReading(id);
        return "redirect:/";
    }

    @GetMapping(value = "add")
    public String addGlycemiaReading(ModelMap model) {
        model.addAttribute("glycemiaReading", new GlycemiaReading());
        model.addAttribute("consiels", consielService.getConsiels());
        System.out.println(consielService.getConsiels());
        return "add";
    }
    @PostMapping(value = "add")
    public String saveGlycemiaReading(@ModelAttribute GlycemiaReading glycemiaReading, ModelMap model) {
        service.saveGlycemiaReading(glycemiaReading);
        model.addAttribute("message", "Glycemia Reading saved successfully");
        return "redirect:/"; // assuming you have a result.jsp to show the success message
    }
}

