package com.supertails.controller;

import com.supertails.model.Product;
import com.supertails.service.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Controller
@RequestMapping("/category/dog/essentials")
@RequiredArgsConstructor
public class DogEssentialsController {

    private final ProductService productService;

//     @GetMapping
//     public String essentialsPage(
//         @RequestParam(required = false) Long categoryId,
//         @RequestParam(required = false) String section,
//         @RequestParam(required = false, defaultValue = "25000") Double maxPrice,
//         @RequestParam(required = false) List<String> breedSize,
//         @RequestParam(required = false) List<String> foodType,
//         @RequestParam(required = false) List<String> petType,
//         @RequestParam(required = false) List<String> brand,
//         Model model) {

//     //  LOAD ORIGINAL DATA
//     List<Product> allProducts;

//     if (categoryId != null) {
//         allProducts = productService.getByCategory(categoryId);
//     } else if ("treats".equals(section)) {
//         allProducts = productService.getByCategories(List.of(14L,15L,16L,17L,18L,19L));
//     } else if ("baked".equals(section)) {
//         allProducts = productService.getByCategory(20L);
//     } else if ("fresh".equals(section)) {
//         allProducts = productService.getByCategory(21L);
//     } else if ("premium".equals(section)) {
//         allProducts = productService.getByCategory(22L);
//     } else {
//         allProducts = productService.getByCategories(List.of(8L,9L,10L,11L,12L,13L));
//     }

//     //  COUNT (FROM ORIGINAL DATA)
//     Map<String, Long> breedCountMap = allProducts.stream()
//             .filter(p -> p.getBreedSize() != null)
//             .collect(Collectors.groupingBy(Product::getBreedSize, Collectors.counting()));

//     // CREATE FILTERED LIST
//     List<Product> products = new ArrayList<>(allProducts);

//    products = products.stream()
//         .filter(p -> p.getPrice() != null &&
//                 p.getPrice().compareTo(BigDecimal.valueOf(maxPrice)) <= 0)
//         .collect(Collectors.toList());

//     //  BREED FILTER (ONLY IF SELECTED)
//     if (breedSize != null && !breedSize.isEmpty()) {
//         products = products.stream()
//                 .filter(p -> p.getBreedSize() != null && breedSize.contains(p.getBreedSize()))
//                 .collect(Collectors.toList());
//     }

//     if (foodType != null && !foodType.isEmpty()) {
//     products = products.stream()
//             .filter(p -> p.getFoodType() != null && foodType.contains(p.getFoodType()))
//             .collect(Collectors.toList());
//         }


//         // correct single petType filter
// if (petType != null && !petType.isEmpty()) {
//     products = products.stream()
//         .filter(p -> p.getPetType() != null && petType.contains(p.getPetType()))
//         .collect(Collectors.toList());
// }




// List<Product> baseFiltered = allProducts.stream()
//         .filter(p -> p.getPrice() != null &&
//                 p.getPrice().compareTo(BigDecimal.valueOf(maxPrice)) <= 0)
//         .filter(p -> breedSize == null || breedSize.isEmpty() ||
//                 (p.getBreedSize() != null && breedSize.contains(p.getBreedSize())))
//         .filter(p -> foodType == null || foodType.isEmpty() ||
//                 (p.getFoodType() != null && foodType.contains(p.getFoodType())))
//         .filter(p -> petType == null || petType.isEmpty() ||
//                 (p.getPetType() != null && petType.contains(p.getPetType())))
//         .collect(Collectors.toList());


//         Map<String, Long> brandCountMap = baseFiltered.stream()
//         .filter(p -> p.getBrand() != null)
//         .collect(Collectors.groupingBy(Product::getBrand, Collectors.counting()));

    
//         List<Product> products = new ArrayList<>(baseFiltered);

//         if (brand != null && !brand.isEmpty()) {
//             products = products.stream()
//                     .filter(p -> p.getBrand() != null && brand.contains(p.getBrand()))
//                     .collect(Collectors.toList());
//         }





// // correct count map
//     Map<String, Long> petTypeCountMap = allProducts.stream()
//     .filter(p -> p.getPetType() != null)
//     .collect(Collectors.groupingBy(Product::getPetType, Collectors.counting()));


    


//         Map<String, Long> foodCountMap = allProducts.stream()
//         .filter(p -> p.getFoodType() != null)
//         .collect(Collectors.groupingBy(Product::getFoodType, Collectors.counting()));

      



//     //   SEND TO UI
//     model.addAttribute("products", products);
//     model.addAttribute("selectedCategory", categoryId);
//     model.addAttribute("section", section);
//     model.addAttribute("maxPrice", maxPrice);
//     model.addAttribute("breedCountMap", breedCountMap);
//     model.addAttribute("foodCountMap", foodCountMap);
//     model.addAttribute("petTypeCountMap", petTypeCountMap);
//      model.addAttribute("brandCountMap", brandCountMap);

//     return "category/dogessentials";
// }



@GetMapping
public String essentialsPage(
        @RequestParam(required = false) Long categoryId,
        @RequestParam(required = false) String section,
        @RequestParam(required = false, defaultValue = "25000") Double maxPrice,
        @RequestParam(required = false) List<String> breedSize,
        @RequestParam(required = false) List<String> foodType,
        @RequestParam(required = false) List<String> petType,
        @RequestParam(required = false) List<String> brand,
        Model model) {

    // ✅ LOAD ORIGINAL DATA
    List<Product> allProducts;

    if (categoryId != null) {
        allProducts = productService.getByCategory(categoryId);
    } else if ("treats".equals(section)) {
        allProducts = productService.getByCategories(List.of(14L,15L,16L,17L,18L,19L));
    } else if ("baked".equals(section)) {
        allProducts = productService.getByCategory(20L);
    } else if ("fresh".equals(section)) {
        allProducts = productService.getByCategory(21L);
    } else if ("premium".equals(section)) {
        allProducts = productService.getByCategory(22L);
    } else {
        allProducts = productService.getByCategories(List.of(8L,9L,10L,11L,12L,13L));
    }

    // ✅ BASE FILTER (ALL filters EXCEPT brand)
    List<Product> baseFiltered = allProducts.stream()
            .filter(p -> p.getPrice() != null &&
                    p.getPrice().compareTo(BigDecimal.valueOf(maxPrice)) <= 0)
            .filter(p -> breedSize == null || breedSize.isEmpty() ||
                    (p.getBreedSize() != null && breedSize.contains(p.getBreedSize())))
            .filter(p -> foodType == null || foodType.isEmpty() ||
                    (p.getFoodType() != null && foodType.contains(p.getFoodType())))
            .filter(p -> petType == null || petType.isEmpty() ||
                    (p.getPetType() != null && petType.contains(p.getPetType())))
            .collect(Collectors.toList());

    // ✅ COUNT MAPS (FROM baseFiltered)
    Map<String, Long> breedCountMap = baseFiltered.stream()
            .filter(p -> p.getBreedSize() != null)
            .collect(Collectors.groupingBy(Product::getBreedSize, Collectors.counting()));

    Map<String, Long> foodCountMap = baseFiltered.stream()
            .filter(p -> p.getFoodType() != null)
            .collect(Collectors.groupingBy(Product::getFoodType, Collectors.counting()));

    Map<String, Long> petTypeCountMap = baseFiltered.stream()
            .filter(p -> p.getPetType() != null)
            .collect(Collectors.groupingBy(Product::getPetType, Collectors.counting()));

    Map<String, Long> brandCountMap = baseFiltered.stream()
            .filter(p -> p.getBrand() != null)
            .collect(Collectors.groupingBy(Product::getBrand, Collectors.counting()));

    // ✅ FINAL PRODUCTS (apply brand filter LAST)
    List<Product> products = new ArrayList<>(baseFiltered);

    if (brand != null && !brand.isEmpty()) {
        products = products.stream()
                .filter(p -> p.getBrand() != null && brand.contains(p.getBrand()))
                .collect(Collectors.toList());
    }

    // ✅ SEND TO UI
    model.addAttribute("products", products);
    model.addAttribute("selectedCategory", categoryId);
    model.addAttribute("section", section);
    model.addAttribute("maxPrice", maxPrice);

    model.addAttribute("breedCountMap", breedCountMap);
    model.addAttribute("foodCountMap", foodCountMap);
    model.addAttribute("petTypeCountMap", petTypeCountMap);
    model.addAttribute("brandCountMap", brandCountMap);

    return "category/dogessentials";
}


}