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
@RequestMapping("/category/rabbit")
public class RabbitController {

    @Autowired
    private ProductRepository productRepository;

    @GetMapping("/food")
    public String rabbitFood(
            @RequestParam(required = false) String section,
            @RequestParam(required = false) Integer categoryId,
            @RequestParam(required = false, defaultValue = "2000") Integer maxPrice,
            @RequestParam(required = false) List<String> brand,
            @RequestParam(required = false) List<String> petType,
            @RequestParam(required = false) List<String> foodType,
            Model model) {

        if (section == null) section = "food";

        List<Product> products = productRepository.findAll().stream()
            .filter(p -> p.getPetType() != null && (
                p.getPetType().contains("Rabbit") ||
                p.getPetType().contains("Hamster") ||
                p.getPetType().contains("Bird") ||
                p.getPetType().contains("Guinea Pig")))
            .filter(p -> categoryId == null || (p.getCategory() != null && p.getCategory().getId().equals(Long.valueOf(categoryId))))
            .filter(p -> p.getPrice() != null && p.getPrice().compareTo(BigDecimal.valueOf(maxPrice)) <= 0)
            .filter(p -> brand == null || brand.isEmpty() || brand.contains(p.getBrand()))
            .filter(p -> petType == null || petType.isEmpty() || petType.stream().anyMatch(pt -> p.getPetType().contains(pt)))
            .filter(p -> foodType == null || foodType.isEmpty() || foodType.contains(p.getFoodType()))
            .collect(Collectors.toList());

        Map<String, Long> brandCountMap = products.stream()
            .filter(p -> p.getBrand() != null)
            .collect(Collectors.groupingBy(Product::getBrand, Collectors.counting()));

        Map<String, Long> petTypeCountMap = new HashMap<>();
        for (String pt : List.of("Rabbits", "Hamster & Guinea Pigs", "Birds", "Cats", "Dogs")) {
            petTypeCountMap.put(pt, products.stream()
                .filter(p -> p.getPetType() != null && p.getPetType().contains(pt))
                .count());
        }

        Map<String, Long> foodCountMap = new HashMap<>();
        foodCountMap.put("Veg", products.stream()
            .filter(p -> "Veg".equals(p.getFoodType())).count());

        model.addAttribute("products", products);
        model.addAttribute("section", section);
        model.addAttribute("selectedCategory", categoryId);
        model.addAttribute("maxPrice", maxPrice);
        model.addAttribute("brandCountMap", brandCountMap);
        model.addAttribute("petTypeCountMap", petTypeCountMap);
        model.addAttribute("foodCountMap", foodCountMap);

        return "category/rabbit/rabbit";
    }
}