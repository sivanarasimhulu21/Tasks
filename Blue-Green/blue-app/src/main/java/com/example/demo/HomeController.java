package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping("/")
    public String home(Model model) {
        model.addAttribute("title", "Blue Deployment Environment");
        model.addAttribute("subtitle", "Stable Production Release");
        model.addAttribute("badge", "BLUE LIVE");
        return "index";
    }
}