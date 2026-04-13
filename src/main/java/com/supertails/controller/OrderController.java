package com.supertails.controller;

import com.supertails.service.OrderService;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/orders")
@RequiredArgsConstructor
public class OrderController {

    private final OrderService orderService;

    // All orders for logged-in user
    @GetMapping
    public String myOrders(@AuthenticationPrincipal UserDetails userDetails, Model model) {
        model.addAttribute("orders", orderService.getOrdersByUser(userDetails.getUsername()));
        return "orders/my-orders";
    }

    // Single order detail + tracking
    @GetMapping("/{id}")
    public String orderDetail(@PathVariable Long id,
                              @AuthenticationPrincipal UserDetails userDetails,
                              @RequestParam(required = false) String success,
                              Model model) {
        var order = orderService.getOrderById(id);

        // Security: users can only see their own orders
        if (!order.getUser().getEmail().equals(userDetails.getUsername())) {
            return "redirect:/orders";
        }

        model.addAttribute("order", order);
        model.addAttribute("success", success != null);
        model.addAttribute("trackingSteps", orderService.getTrackingSteps(order.getStatus()));
        return "orders/order-detail";
    }
}