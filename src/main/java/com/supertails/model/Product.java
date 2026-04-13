package com.supertails.model;

import jakarta.persistence.*;
import jakarta.validation.constraints.*;
import lombok.*;

import java.math.BigDecimal;
import java.time.LocalDateTime;

@Entity
@Table(name = "products")
@Getter @Setter
@NoArgsConstructor @AllArgsConstructor
@Builder
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank
    @Column(nullable = false)
    private String name;

    @Column(columnDefinition = "TEXT")
    private String description;

    @NotNull
    @DecimalMin("0.0")
    @Column(nullable = false, precision = 10, scale = 2)
    private BigDecimal price;

    @Column(name = "breed")
    private String breed;

    @Min(0)
    private int stock;

    private String imageUrl;

    @Enumerated(EnumType.STRING)
    private ProductType type; // ECOMMERCE, FOOD, SERVICE

    private boolean available = true;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "category_id")
    private Category category;

    @Column(name = "created_at", updatable = false)
    private LocalDateTime createdAt;

    @PrePersist
    protected void onCreate() {
        createdAt = LocalDateTime.now();
    }

    public enum ProductType {
        ECOMMERCE, FOOD, SERVICE
    }

    @DecimalMin("0.0")
@Column(precision = 10, scale = 2)
private BigDecimal originalPrice;

@Min(0)
@Max(100)
@Column(name = "discount_percent")
private Integer  discountPercent;

@Column(name = "brand")
private String brand;


@Column(name = "pet_type")
private String petType;

@Column(name = "breed_size")
private String breedSize;

@Column(name = "food_type")
private String foodType;

@Column(name = "tags")
private String tags;

}
