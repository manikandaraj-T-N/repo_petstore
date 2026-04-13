package com.supertails.service;

import com.supertails.model.*;
import com.supertails.repository.*;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
public class CartService {

    private final CartRepository cartRepository;
    private final ProductRepository productRepository;
    private final UserRepository userRepository;

    public Cart getOrCreateCart(String email) {
        User user = userRepository.findByEmail(email)
            .orElseThrow(() -> new RuntimeException("User not found"));
        return cartRepository.findByUserId(user.getId())
            .orElseGet(() -> cartRepository.save(Cart.builder().user(user).build()));
    }

    @Transactional
    public void addItem(String email, Long productId, int quantity) {
        Cart cart = getOrCreateCart(email);
        Product product = productRepository.findById(productId)
            .orElseThrow(() -> new RuntimeException("Product not found"));

        cart.getItems().stream()
            .filter(i -> i.getProduct().getId().equals(productId))
            .findFirst()
            .ifPresentOrElse(
                existing -> existing.setQuantity(existing.getQuantity() + quantity),
                () -> cart.getItems().add(
                    CartItem.builder().cart(cart).product(product).quantity(quantity).build()
                )
            );

        cartRepository.save(cart);
    }

    @Transactional
    public void updateQuantity(String email, Long itemId, int quantity) {
        Cart cart = getOrCreateCart(email);
        cart.getItems().stream()
            .filter(i -> i.getId().equals(itemId))
            .findFirst()
            .ifPresent(item -> {
                if (quantity <= 0) cart.getItems().remove(item);
                else item.setQuantity(quantity);
            });
        cartRepository.save(cart);
    }

    @Transactional
    public void removeItem(String email, Long itemId) {
        Cart cart = getOrCreateCart(email);
        cart.getItems().removeIf(i -> i.getId().equals(itemId));
        cartRepository.save(cart);
    }

    @Transactional
    public void clearCart(String email) {
        Cart cart = getOrCreateCart(email);
        cart.getItems().clear();
        cartRepository.save(cart);
    }
}