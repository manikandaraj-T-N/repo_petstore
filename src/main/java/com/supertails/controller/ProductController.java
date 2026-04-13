package com.supertails.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.supertails.model.Product;
import com.supertails.repository.ProductRepository;
import com.supertails.service.ProductService;


@Controller
@RequestMapping("/products")


public class ProductController {

    @Autowired
    private ProductService productService;

    @Autowired
    private ProductRepository productRepository;

@GetMapping
public String listProducts(
        @RequestParam(required = false) String keyword,
        @RequestParam(required = false) String breed,
        @RequestParam(required = false) Long categoryId,
        Model model) {

    List<Product> products;

    if (breed != null && !breed.isBlank() && categoryId != null) {
        products = productService.getByBreedAndCategory(breed, categoryId);

    } else if (breed != null && !breed.isBlank()) {
        products = productService.getByBreed(breed);

    } else if (categoryId != null) {
        products = productService.getByCategory(categoryId);

    } else if (keyword != null && !keyword.isBlank()) {
        products = productService.search(keyword);

    } else {
        products = productService.getAllAvailable();
    }

    model.addAttribute("products", products);
    model.addAttribute("breed", breed);
    model.addAttribute("keyword", keyword);
    // model.addAttribute("categoryId", categoryId);
    model.addAttribute("selectedCategory", categoryId);

    return "products/dogfood";
}


    @GetMapping("/products")
    public String showProducts(
            @RequestParam(required = false) String keyword,
            Model model) {

        List<Product> products;

        if (keyword != null) {
            products = productService.searchByKeyword(keyword);
        } else {
            products = productService.getAvailableProducts();
        }

        System.out.println("Products size: " + products.size());
       
        model.addAttribute("products", products);
        model.addAttribute("brands", productService.getAllBrands());
        model.addAttribute("brandCount", productService.getBrandCounts());

        return "products/list";
    }


 @GetMapping("/filter")
public String filterProducts(
        @RequestParam(required = false) Integer maxPrice,
        @RequestParam(required = false) List<String> brands,
        @RequestParam(required = false) String petType,
        @RequestParam(required = false) Long categoryId,
        Model model) {

    List<Product> products;

    if (brands != null && petType != null) {
        products = productRepository
                .findByBrandInAndPetTypeAndCategoryId(brands, petType, categoryId);

    } else if (maxPrice != null && categoryId != null) {
        products = productRepository
                .findByPriceLessThanEqualAndCategoryId(maxPrice, categoryId);

    } else if (categoryId != null) {
        products = productRepository.findByCategoryId(categoryId);

    } else {
        products = productRepository.findAll();
    }

    System.out.println("Products size: " + products.size());

    model.addAttribute("products", products);
    model.addAttribute("categoryId", categoryId);

    return "products/dogfood"; 
}

}


