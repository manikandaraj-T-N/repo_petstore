package com.supertails.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;
import java.util.ArrayList;
import java.util.stream.Collectors;
import java.math.BigDecimal;

import com.supertails.model.Product;
import com.supertails.repository.ProductRepository;

@Controller
@RequestMapping("/category/cat")
public class CatCategoryController {

    @Autowired
    private ProductRepository productRepository;

   @GetMapping("/essentials")
public String catEssentials(
        @RequestParam(required = false) String section,
        @RequestParam(required = false) Integer categoryId,
        @RequestParam(required = false, defaultValue = "25000") Double maxPrice,
        @RequestParam(required = false) List<String> breedSize,
        @RequestParam(required = false) List<String> foodType,
        @RequestParam(required = false) List<String> brand,
        Model model) {

    List<Product> allProducts;

    if (categoryId != null) {
        allProducts = productRepository.findByCategoryId(Long.valueOf(categoryId));
    } else if (section != null) {
        allProducts = switch (section) {
            case "dry"          -> productRepository.findByCategoryIdAndPetType(84L, "Cat");
            case "wet"          -> productRepository.findByCategoryIdAndPetType(85L, "Cat");
            case "treats"       -> productRepository.findByCategoryIdAndPetType(86L, "Cat");
            case "prescription" -> productRepository.findByTagsContainingAndPetType("prescription", "Cat");
            case "premium"      -> productRepository.findByTagsContainingAndPetType("premium", "Cat");
            case "supplements"  -> productRepository.findByCategoryIdAndPetType(89L, "Cat");
            case "kitten"       -> productRepository.findByTagsContainingAndPetType("kitten", "Cat");
            case "newlaunch"    -> productRepository.findByTagsContainingAndPetType("new-launch", "Cat");
            case "combos"       -> productRepository.findByCategoryIdAndPetType(91L, "Cat");
            case "litter"       -> productRepository.findByCategoryIdInAndPetType(List.of(92L,93L,94L,95L), "Cat");
            default             -> productRepository.findByPetType("Cat");
        };
    } else {
        allProducts = productRepository.findByPetType("Cat");
    }

    // PRICE FILTER
    List<Product> baseFiltered = allProducts.stream()
            .filter(p -> p.getPrice() != null &&
                    p.getPrice().compareTo(java.math.BigDecimal.valueOf(maxPrice)) <= 0)
            .filter(p -> breedSize == null || breedSize.isEmpty() ||
                    (p.getBreedSize() != null && breedSize.contains(p.getBreedSize())))
            .filter(p -> foodType == null || foodType.isEmpty() ||
                    (p.getFoodType() != null && foodType.contains(p.getFoodType())))
            .collect(java.util.stream.Collectors.toList());

    // COUNT MAPS
    Map<String, Long> breedCountMap = baseFiltered.stream()
            .filter(p -> p.getBreedSize() != null)
            .collect(java.util.stream.Collectors.groupingBy(Product::getBreedSize, java.util.stream.Collectors.counting()));

    Map<String, Long> foodCountMap = baseFiltered.stream()
            .filter(p -> p.getFoodType() != null)
            .collect(java.util.stream.Collectors.groupingBy(Product::getFoodType, java.util.stream.Collectors.counting()));

    Map<String, Long> petTypeCountMap = new java.util.HashMap<>();
    petTypeCountMap.put("Cats", (long) baseFiltered.size());

    Map<String, Long> brandCountMap = baseFiltered.stream()
            .filter(p -> p.getBrand() != null && !p.getBrand().isBlank())
            .collect(java.util.stream.Collectors.groupingBy(Product::getBrand, java.util.stream.Collectors.counting()));

    // BRAND FILTER
    List<Product> products = new java.util.ArrayList<>(baseFiltered);
    if (brand != null && !brand.isEmpty()) {
        List<String> brandLower = brand.stream().map(String::toLowerCase).collect(java.util.stream.Collectors.toList());
        products = products.stream()
                .filter(p -> p.getBrand() != null && brandLower.contains(p.getBrand().toLowerCase()))
                .collect(java.util.stream.Collectors.toList());
    }

    model.addAttribute("products", products);
    model.addAttribute("section", section);
    model.addAttribute("selectedCategory", categoryId);
    model.addAttribute("maxPrice", maxPrice);
    model.addAttribute("breedCountMap", breedCountMap);
    model.addAttribute("foodCountMap", foodCountMap);
    model.addAttribute("petTypeCountMap", petTypeCountMap);
    model.addAttribute("brandCountMap", brandCountMap);
    return "category/cat/catessentials";
}




    @GetMapping("/breeds")
    public String catBreeds(
            @RequestParam(required = false) String breed,
            @RequestParam(required = false) Integer categoryId,
            Model model) {

        List<Product> products;

        if (breed != null && categoryId != null) {
            products = productRepository.findByBreedAndCategoryIdAndPetType(
                    breed, Long.valueOf(categoryId), "Cat");
        } else if (breed != null) {
            products = productRepository.findByBreedAndPetType(breed, "Cat");
        } else if (categoryId != null) {
            products = productRepository.findByCategoryIdAndPetType(
                    Long.valueOf(categoryId), "Cat");
        } else {
            products = productRepository.findByPetType("Cat");
        }

        model.addAttribute("products", products);
        model.addAttribute("breed", breed);
        model.addAttribute("selectedCategory", categoryId);
        return "category/cat/cat-breeds";
    }


    @GetMapping("/litter")
public String catLitter(
        @RequestParam(required = false) String section,
        @RequestParam(required = false) Integer categoryId,
        Model model) {

    List<Product> products;

    if (categoryId != null) {
        products = productRepository.findByCategoryId(Long.valueOf(categoryId));
    } else if (section != null) {
        products = switch (section) {
            case "scented"   -> productRepository.findByCategoryIdAndPetType(92L, "Cat");
            case "unscented" -> productRepository.findByCategoryIdAndPetType(93L, "Cat");
            case "boxes"     -> productRepository.findByCategoryIdAndPetType(94L, "Cat");
            case "mats"      -> productRepository.findByCategoryIdAndPetType(95L, "Cat");
            default          -> productRepository.findByTagsContainingAndPetType("litter", "Cat");
        };
    } else {
        products = productRepository.findByTagsContainingAndPetType("litter", "Cat");
    }

    model.addAttribute("products", products);
    model.addAttribute("section", section);
    model.addAttribute("selectedCategory", categoryId);
    return "category/cat/cat-litter";
}


// @GetMapping("/lifestyle")
// public String catLifestyle(
//         @RequestParam(required = false) String section,
//         @RequestParam(required = false) Integer categoryId,
//         Model model) {

//     List<Product> products;

//     if (categoryId != null) {
//         products = productRepository.findByCategoryId(Long.valueOf(categoryId));
//     } else if (section != null) {
//         products = switch (section) {
//             case "summerwear" -> productRepository.findByCategoryIdAndPetType(96L, "Cat");
//             case "beds"       -> productRepository.findByCategoryIdAndPetType(97L, "Cat");
//             case "toys"       -> productRepository.findByCategoryIdAndPetType(98L, "Cat");
//             case "walk"       -> productRepository.findByCategoryIdAndPetType(99L, "Cat");
//             case "bowls"      -> productRepository.findByCategoryIdAndPetType(100L, "Cat");
//             case "trees"      -> productRepository.findByCategoryIdAndPetType(101L, "Cat");
//             case "bath"       -> productRepository.findByCategoryIdAndPetType(102L, "Cat");
//             case "travel"     -> productRepository.findByCategoryIdAndPetType(103L, "Cat");
//             default           -> productRepository.findByTagsContainingAndPetType("lifestyle", "Cat");
//         };
//     } else {
//         products = productRepository.findByTagsContainingAndPetType("lifestyle", "Cat");
//     }

//     model.addAttribute("products", products);
//     model.addAttribute("section", section);
//     model.addAttribute("selectedCategory", categoryId);
//     return "category/cat/cat-lifestyle";
// }



@GetMapping("/lifestyle")
public String catLifestyle(
        @RequestParam(required = false) String section,
        @RequestParam(required = false) Integer categoryId,
        Model model) {

    List<Product> products;

    if (categoryId != null) {
        products = productRepository.findByCategoryId(Long.valueOf(categoryId));
    } else if (section != null) {
        products = switch (section) {
            case "beds"   -> productRepository.findByCategoryIdIn(List.of(140L, 141L, 142L));
            case "toys"   -> productRepository.findByCategoryIdIn(List.of(143L, 144L));
            case "walk"   -> productRepository.findByCategoryIdIn(List.of(146L, 147L, 148L, 149L));
            case "bowls"  -> productRepository.findByCategoryIdIn(List.of(150L, 151L, 152L));
            case "bath"   -> productRepository.findByCategoryIdIn(List.of(154L, 155L));
            default       -> productRepository.findByTagsContainingAndPetType("lifestyle", "Cat");
        };
    } else {
        products = productRepository.findByTagsContainingAndPetType("lifestyle", "Cat");
    }

    model.addAttribute("products", products);
    model.addAttribute("section", section);
    model.addAttribute("selectedCategory", categoryId);
    return "category/cat/cat-lifestyle";
}



@GetMapping("/health")
public String catHealth(
        @RequestParam(required = false) String section,
        @RequestParam(required = false) Integer categoryId,
        Model model) {

    List<Product> products;

    if (categoryId != null) {
        products = productRepository.findByCategoryId(Long.valueOf(categoryId));
    } else if (section != null) {
        products = switch (section) {
            case "clinic"    -> productRepository.findByCategoryIdAndPetType(111L, "Cat");
            case "skincare"  -> productRepository.findByTagsContainingAndPetType("health", "Cat");
            case "dewormer"  -> productRepository.findByCategoryIdAndPetType(105L, "Cat");
            case "tickflea"  -> productRepository.findByCategoryIdAndPetType(106L, "Cat");
            case "jointcare" -> productRepository.findByCategoryIdAndPetType(107L, "Cat");
            case "kidneycare"-> productRepository.findByCategoryIdAndPetType(108L, "Cat");
            case "cardiac"   -> productRepository.findByCategoryIdAndPetType(109L, "Cat");
            case "combos"    -> productRepository.findByCategoryIdAndPetType(110L, "Cat");
            default          -> productRepository.findByPetType("Cat");
        };
    } else {
        products = productRepository.findByPetType("Cat");
    }

    model.addAttribute("products", products);
    model.addAttribute("section", section);
    model.addAttribute("selectedCategory", categoryId);
    return "category/cat/cat-health";
}



@GetMapping("/petparent")
public String catPetParent(
        @RequestParam(required = false) String section,
        @RequestParam(required = false) Integer categoryId,
        Model model) {

    List<Product> products;

    if (categoryId != null) {
        products = productRepository.findByCategoryId(Long.valueOf(categoryId));
    } else if (section != null) {
        products = switch (section) {
            // add your cat petparent category IDs here
            default -> productRepository.findByTagsContainingAndPetType("petparent", "Cat");
        };
    } else {
        products = productRepository.findByTagsContainingAndPetType("petparent", "Cat");
    }

    model.addAttribute("products", products);
    model.addAttribute("section", section);
    model.addAttribute("selectedCategory", categoryId);
    return "category/cat/cat-petparent";
}










}