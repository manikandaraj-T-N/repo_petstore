package com.supertails.controller;

import com.supertails.service.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@RequiredArgsConstructor
public class HomeController {

    private final ProductService productService;

    @GetMapping({"/", "/home"})
    public String home(Model model) {
        var featured = productService.getAllAvailable();
        // Show only first 8 on home page
        model.addAttribute("featuredProducts",
            featured.size() > 8 ? featured.subList(0, 8) : featured);
        return "home";
    }
}