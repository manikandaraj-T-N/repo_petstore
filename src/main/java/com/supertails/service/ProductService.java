package com.supertails.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.supertails.model.Category;
import com.supertails.model.Product;
import com.supertails.repository.CategoryRepository;
import com.supertails.repository.ProductRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ProductService {

    private final ProductRepository productRepository;
    private final CategoryRepository categoryRepository;

    public List<Product> getAllAvailable() {
        return productRepository.findByAvailableTrue();
    }

    public List<Product> getByCategory(Long categoryId) {
        return productRepository.findByCategoryIdAndAvailableTrue(categoryId);
    }

    public List<Product> getByCategories(List<Long> ids) {
        return productRepository.findByCategoryIdIn(ids);
    }

    public List<Product> getByType(Product.ProductType type) {
        return productRepository.findByType(type);
    }

    public List<Product> search(String keyword) {
        return productRepository.searchByKeyword(keyword);
    }

    public List<Product> getAll() {
        return productRepository.findAll();
    }

    public List<Product> getByBreed(String breed) {
        return productRepository.findByBreedIgnoreCase(breed);
    }

    public List<Product> getByBreedAndCategory(String breed, Long categoryId) {
        return productRepository.findByBreedIgnoreCaseAndCategoryId(breed, categoryId);
    }

    public Product getById(Long id) {
        return productRepository.findById(id)
            .orElseThrow(() -> new RuntimeException("Product not found: " + id));
    }

    public Product save(Product product) {
        return productRepository.save(product);
    }

    public void delete(Long id) {
        productRepository.deleteById(id);
    }

    public List<Category> getAllCategories() {
        return categoryRepository.findAll();
    }

    public List<Product> getAvailableProducts() {
    return productRepository.findByAvailableTrue();
}

public List<Product> searchByKeyword(String keyword) {
    return productRepository.searchByKeyword(keyword);
}


    public Map<String, Long> getBrandCounts() {
        List<Object[]> data = productRepository.countProductsByBrand();

        Map<String, Long> map = new HashMap<>();

        for (Object[] row : data) {
            map.put((String) row[0], (Long) row[1]);
        }

        return map;
    }


    public List<String> getAllBrands() {
        return productRepository.findDistinctBrands();
    }




}