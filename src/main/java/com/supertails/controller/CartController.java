package com.supertails.controller;

import com.supertails.service.CartService;
import com.supertails.service.OrderService;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/cart")
@RequiredArgsConstructor
public class CartController {

    private final CartService cartService;
    private final OrderService orderService;

    @GetMapping
    public String viewCart(@AuthenticationPrincipal UserDetails userDetails, Model model) {
        model.addAttribute("cart", cartService.getOrCreateCart(userDetails.getUsername()));
        return "cart/cart";
    }

    @PostMapping("/add")
    public String addToCart(@AuthenticationPrincipal UserDetails userDetails,
                            @RequestParam Long productId,
                            @RequestParam(defaultValue = "1") int quantity) {
        cartService.addItem(userDetails.getUsername(), productId, quantity);
        return "redirect:/cart";
    }

    @PostMapping("/update")
    public String updateCart(@AuthenticationPrincipal UserDetails userDetails,
                             @RequestParam Long itemId,
                             @RequestParam int quantity) {
        cartService.updateQuantity(userDetails.getUsername(), itemId, quantity);
        return "redirect:/cart";
    }

    @PostMapping("/remove")
    public String removeItem(@AuthenticationPrincipal UserDetails userDetails,
                             @RequestParam Long itemId) {
        cartService.removeItem(userDetails.getUsername(), itemId);
        return "redirect:/cart";
    }

    @GetMapping("/checkout")
    public String checkoutPage(@AuthenticationPrincipal UserDetails userDetails, Model model) {
        model.addAttribute("cart", cartService.getOrCreateCart(userDetails.getUsername()));
        return "cart/checkout";
    }

    @PostMapping("/checkout")
    public String placeOrder(@AuthenticationPrincipal UserDetails userDetails,
                             @RequestParam String shippingAddress) {
        var order = orderService.placeOrder(userDetails.getUsername(), shippingAddress);
        return "redirect:/orders/" + order.getId() + "?success=true";
    }
}