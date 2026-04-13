package com.supertails.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.supertails.service.ProductService;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/category")
@RequiredArgsConstructor
public class CategoryController {

    private final ProductService productService;

    @GetMapping("/dog")
    public String dogPage(Model model) {
        model.addAttribute("products", productService.search("dog"));
        model.addAttribute("pageTitle", "Dogs");
        model.addAttribute("categories", productService.getAllCategories());
        return "category/dog";
    }

    @GetMapping("/cat")
    public String catPage(Model model) {
        model.addAttribute("products", productService.search("cat"));
        model.addAttribute("pageTitle", "Cats");
        model.addAttribute("categories", productService.getAllCategories());
        return "category/cat/cat";
    }

    @GetMapping("/petparent")
    public String petParentPage(Model model) {
        model.addAttribute("products", productService.search("pharmacy"));
        model.addAttribute("pageTitle", "Pet Parent");
        model.addAttribute("categories", productService.getAllCategories());
        return "category/petparent";
    }

    @GetMapping("/fish")
    public String fishPage(Model model) {
        model.addAttribute("products", productService.search("fish"));
        model.addAttribute("pageTitle", "Fish");
        model.addAttribute("categories", productService.getAllCategories());
        return "category/fish";
    }

    @GetMapping("/rabbit")
    public String rabbitPage(Model model) {
        model.addAttribute("products", productService.search("rabbit"));
        model.addAttribute("pageTitle", "Rabbits");
        model.addAttribute("categories", productService.getAllCategories());
        return "category/rabbit";
    }

    @GetMapping("/birds")
    public String birdsPage(Model model) {
        model.addAttribute("products", productService.search("birds"));
        model.addAttribute("pageTitle", "Birds");
        model.addAttribute("categories", productService.getAllCategories());
        return "category/birds";
    }
}