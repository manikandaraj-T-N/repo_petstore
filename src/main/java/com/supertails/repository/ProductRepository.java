

package com.supertails.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.supertails.model.Product;

@Repository
public interface ProductRepository extends JpaRepository<Product, Long> {

    List<Product> findByAvailableTrue();
    List<Product> findByCategoryId(Long categoryId);
    List<Product> findByCategoryIdAndAvailableTrue(Long categoryId);
    List<Product> findByCategoryIdIn(List<Long> categoryIds);
    List<Product> findByType(Product.ProductType type);
    List<Product> findByBreedIgnoreCase(String breed);
    List<Product> findByBreedIgnoreCaseAndCategoryId(String breed, Long categoryId);

     List<Product> findByBrandInAndCategoryId(List<String> brands, Long categoryId);

     List<Product> findByBrandInAndPetTypeAndCategoryId(
     List<String> brands, String petType, Long categoryId);

// cat 

List<Product> findByPetType(String petType);
// List<Product> findByCategoryId(Long categoryId);
List<Product> findByCategoryIdAndPetType(Long categoryId, String petType);
List<Product> findByCategoryIdInAndPetType(List<Long> categoryIds, String petType);
List<Product> findByBreedAndPetType(String breed, String petType);

List<Product> findByBreedAndCategoryIdAndPetType(String breed, Long categoryId, String petType);


List<Product> findByTagsContainingAndPetType(String tag, String petType);



     List<Product> findByBreedSizeIn(List<String> breedSize);

     List<Product> findByPriceLessThanEqualAndCategoryId(Integer price, Long categoryId);

    @Query("SELECT p FROM Product p WHERE " +
           "LOWER(p.name) LIKE LOWER(CONCAT('%', :keyword, '%')) OR " +
           "LOWER(p.description) LIKE LOWER(CONCAT('%', :keyword, '%'))")
    List<Product> searchByKeyword(@Param("keyword") String keyword);


    @Query("SELECT DISTINCT p.brand FROM Product p WHERE p.available = true")
    List<String> findDistinctBrands();

    @Query("SELECT p.brand, COUNT(p) FROM Product p WHERE p.available = true GROUP BY p.brand")
    List<Object[]> countProductsByBrand();

    @Query("SELECT p.breedSize, COUNT(p) FROM Product p GROUP BY p.breedSize")
    List<Object[]> countByBreedSize();



}