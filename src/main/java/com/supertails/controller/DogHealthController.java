package com.supertails.controller;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.supertails.model.Product;
import com.supertails.service.ProductService;

@Controller
public class DogHealthController {

    private final ProductService productService;

   
    public DogHealthController(ProductService productService) {
        this.productService = productService;
    }

 @GetMapping("/category/dog/health")
public String dogHealthPage(
        @RequestParam(required = false) String section,
        @RequestParam(required = false) Long categoryId,
        @RequestParam(required = false, defaultValue = "5000") Double maxPrice,
        @RequestParam(required = false) List<String> brand,
        Model model) {

    // STEP 1: LOAD BASE DATA
    List<Product> allProducts;

    if (section == null) {
        allProducts = productService.getByCategories(
            List.of(69L, 70L, 71L, 72L, 73L, 74L, 75L));
    } else if (section.equals("clinic")) {
        allProducts = List.of();
    } else if (categoryId != null) {
        allProducts = productService.getByCategory(categoryId);
    } else {
        // section selected but no categoryId — load all of that section
        allProducts = switch (section) {
            case "skincare"   -> productService.getByCategory(69L);
            case "dewormer"   -> productService.getByCategory(70L);
            case "tickflea"   -> productService.getByCategory(71L);
            case "jointcare"  -> productService.getByCategory(72L);
            case "kidneycare" -> productService.getByCategory(73L);
            case "cardiac"    -> productService.getByCategory(74L);
            case "combos"     -> productService.getByCategory(75L);
            default           -> List.of();
        };
    }

    // STEP 2: APPLY PRICE FILTER
    List<Product> baseFiltered = allProducts.stream()
            .filter(p -> p.getPrice() != null &&
                    p.getPrice().compareTo(BigDecimal.valueOf(maxPrice)) <= 0)
            .collect(Collectors.toList());

    // STEP 3: BRAND COUNT (before brand filter)
    Map<String, Long> brandCountMap = baseFiltered.stream()
            .filter(p -> p.getBrand() != null)
            .collect(Collectors.groupingBy(Product::getBrand, Collectors.counting()));

    // STEP 4: APPLY BRAND FILTER
    List<Product> products = new ArrayList<>(baseFiltered);
    if (brand != null && !brand.isEmpty()) {
        products = products.stream()
                .filter(p -> p.getBrand() != null && brand.contains(p.getBrand()))
                .collect(Collectors.toList());
    }

    // STEP 5: SEND TO UI
    model.addAttribute("products", products);
    model.addAttribute("section", section);
    model.addAttribute("selectedCategory", categoryId);
    model.addAttribute("maxPrice", maxPrice);
    model.addAttribute("brandCountMap", brandCountMap);

    return "category/doghealth";
}

}