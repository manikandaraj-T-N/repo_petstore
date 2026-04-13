package com.supertails.controller;

import com.supertails.service.ProductService;
import lombok.RequiredArgsConstructor;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.math.BigDecimal;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.stream.Collectors;

import com.supertails.model.Product;

@Controller
@RequiredArgsConstructor
public class DogPetParentController {

    private final ProductService productService;

    @GetMapping("/category/dog/petparent")
    public String dogPetParentPage(
            @RequestParam(required = false) String section,
            @RequestParam(required = false) Long categoryId,
            @RequestParam(required = false, defaultValue = "50000") Double maxPrice,
            @RequestParam(required = false) List<String> brand,
            Model model) {

        // STEP 1: LOAD BASE DATA
        List<Product> allProducts;

        if (categoryId != null) {
            allProducts = productService.getByCategory(categoryId);
        } else if (section != null) {
            allProducts = switch (section) {
                case "tshirts"      -> productService.getByCategory(76L);
                case "keychains"    -> productService.getByCategory(77L);
                case "charms"       -> productService.getByCategory(78L);
                case "coasters"     -> productService.getByCategory(79L);
                case "accessories"  -> productService.getByCategory(80L);
                case "mugs"         -> productService.getByCategory(81L);
                case "plants"       -> productService.getByCategory(82L);
                case "carry"        -> productService.getByCategory(83L);
                default             -> productService.getByCategories(
                    List.of(76L,77L,78L,79L,80L,81L,82L,83L));
            };
        } else {
            allProducts = productService.getByCategories(
                List.of(76L,77L,78L,79L,80L,81L,82L,83L));
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

        // // STEP 4: APPLY BRAND FILTER
        // List<Product> products = new ArrayList<>(baseFiltered);
        // if (brand != null && !brand.isEmpty()) {
        //     products = products.stream()
        //             .filter(p -> p.getBrand() != null && brand.contains(p.getBrand()))
        //             .collect(Collectors.toList());
        // }


        // STEP 4: APPLY BRAND FILTER (case-insensitive)
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


// DEBUG - remove after fixing
System.out.println("=== PETPARENT DEBUG ===");
System.out.println("section: " + section);
System.out.println("categoryId: " + categoryId);
System.out.println("allProducts size: " + allProducts.size());
System.out.println("baseFiltered size: " + baseFiltered.size());
System.out.println("brandCountMap: " + brandCountMap);
System.out.println("brand param: " + brand);
System.out.println("final products: " + products.size());


        // STEP 5: SEND TO UI
        model.addAttribute("products", products);
        model.addAttribute("section", section);
        model.addAttribute("selectedCategory", categoryId);
        model.addAttribute("maxPrice", maxPrice);
        model.addAttribute("brandCountMap", brandCountMap);

        return "category/dogpetparent";
    }
}