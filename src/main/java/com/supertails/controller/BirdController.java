package com.supertails.controller;

import com.supertails.model.Product;
import com.supertails.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Controller
@RequestMapping("/category/bird")
public class BirdController {

    @Autowired
    private ProductRepository productRepository;

    @GetMapping("/food")
    public String birdFood(
            @RequestParam(required = false) String section,
            @RequestParam(required = false) Integer categoryId,
            @RequestParam(required = false, defaultValue = "3000") Integer maxPrice,
            @RequestParam(required = false) List<String> brand,
            @RequestParam(required = false) List<String> petType,
            Model model) {

        if (section == null) section = "food";

        List<Product> products = productRepository.findAll().stream()
            .filter(p -> p.getPetType() != null && p.getPetType().contains("Bird"))
            .filter(p -> categoryId == null || (p.getCategory() != null && p.getCategory().getId().equals(Long.valueOf(categoryId))))
            .filter(p -> p.getPrice() != null && p.getPrice().compareTo(BigDecimal.valueOf(maxPrice)) <= 0)
            .filter(p -> brand == null || brand.isEmpty() || brand.contains(p.getBrand()))
            .filter(p -> petType == null || petType.isEmpty() || petType.stream().anyMatch(pt -> p.getPetType().contains(pt)))
            .collect(Collectors.toList());

        Map<String, Long> brandCountMap = products.stream()
            .filter(p -> p.getBrand() != null)
            .collect(Collectors.groupingBy(Product::getBrand, Collectors.counting()));

        Map<String, Long> petTypeCountMap = new HashMap<>();
        for (String pt : List.of("Birds", "Hamster & Guinea Pigs")) {
            petTypeCountMap.put(pt, products.stream()
                .filter(p -> p.getPetType() != null && p.getPetType().contains(pt))
                .count());
        }

        model.addAttribute("products", products);
        model.addAttribute("section", section);
        model.addAttribute("selectedCategory", categoryId);
        model.addAttribute("maxPrice", maxPrice);
        model.addAttribute("brandCountMap", brandCountMap);
        model.addAttribute("petTypeCountMap", petTypeCountMap);

        return "category/bird/bird";
    }
}