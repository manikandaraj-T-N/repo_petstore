package com.supertails.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.supertails.model.Product;
import com.supertails.service.ProductService;

import lombok.RequiredArgsConstructor;
import java.math.BigDecimal;
import java.util.Map;
import java.util.stream.Collectors;

@Controller
@RequestMapping("/category/dog/fashion")
@RequiredArgsConstructor
public class DogFashionController {

    private final ProductService productService;

    @GetMapping
    public String fashionPage(
            @RequestParam(required = false) Long categoryId,
            @RequestParam(required = false) String section,
            @RequestParam(required = false, defaultValue = "25000") Double maxPrice,
            @RequestParam(required = false) List<String> brand,
            Model model) {

        // STEP 1: LOAD BASE DATA
        List<Product> allProducts;

        if (categoryId != null) {
            allProducts = productService.getByCategory(categoryId);
        } else if ("boots".equals(section)) {
            allProducts = productService.getByCategories(List.of(38L,39L,40L,41L));
        } else if ("clothes".equals(section)) {
            allProducts = productService.getByCategories(List.of(42L,43L,44L,45L));
        } else if ("chewtoys".equals(section)) {
            allProducts = productService.getByCategories(List.of(46L,47L,48L,49L,50L));
        } else if ("shampoo".equals(section)) {
            allProducts = productService.getByCategories(List.of(51L,52L,53L,54L));
        } else if ("harness".equals(section)) {
            allProducts = productService.getByCategories(List.of(55L,56L,57L,58L,59L));
        } else if ("diapers".equals(section)) {
            allProducts = productService.getByCategory(60L);
        } else if ("ethnic".equals(section)) {
            allProducts = productService.getByCategories(List.of(61L,62L,63L,64L));
        } else if ("beds".equals(section)) {
            allProducts = productService.getByCategories(List.of(65L,66L,67L,68L));
        } else {
            allProducts = productService.getByCategories(
                List.of(38L,39L,40L,41L,42L,43L,44L,45L,
                        46L,47L,48L,49L,50L,51L,52L,53L,
                        54L,55L,56L,57L,58L,59L,60L,61L,
                        62L,63L,64L,65L,66L,67L,68L));
        }

        // STEP 2: APPLY PRICE FILTER
        List<Product> baseFiltered = allProducts.stream()
                .filter(p -> p.getPrice() != null &&
                        p.getPrice().compareTo(BigDecimal.valueOf(maxPrice)) <= 0)
                .collect(Collectors.toList());

        // STEP 3: BRAND COUNT
        Map<String, Long> brandCountMap = baseFiltered.stream()
        .filter(p -> p.getBrand() != null && !p.getBrand().isBlank())
        .collect(Collectors.groupingBy(Product::getBrand, Collectors.counting()));


        // STEP 4: APPLY BRAND FILTER
        List<Product> products = new ArrayList<>(baseFiltered);
        if (brand != null && !brand.isEmpty()) {
            List<String> brandLower = brand.stream()
                    .map(String::toLowerCase)
                    .collect(Collectors.toList());
            
            products = products.stream()
                    .filter(p -> p.getBrand() != null && 
                            brandLower.contains(p.getBrand().toLowerCase()))
                    .collect(Collectors.toList());
        }

        // STEP 5: SEND TO UI
        model.addAttribute("products", products);
        model.addAttribute("selectedCategory", categoryId);
        model.addAttribute("section", section);
        model.addAttribute("maxPrice", maxPrice);
        model.addAttribute("brandCountMap", brandCountMap);

        return "products/dogfashion";
    }
}