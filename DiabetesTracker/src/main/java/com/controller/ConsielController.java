package com.controller;

import com.service.ConsielService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class ConsielController {

    @Autowired
    private ConsielService consielService;

    @GetMapping("/consiel")
    public String showConsiel(Model model) {
        model.addAttribute("conseils", consielService.getConsiels());
        return "consiel";
    }

    @GetMapping("/details")
    public String getConsielByGlycemia(@RequestParam("glycemiaValue") Double glycemiaValue, Model model) {
        List<Object> consiel = consielService.getConsielByGlycemia(glycemiaValue);
        model.addAttribute("consiel", consiel);
        System.out.println("details====>>> "+consiel);
        return "consielDetail";
    }
}
