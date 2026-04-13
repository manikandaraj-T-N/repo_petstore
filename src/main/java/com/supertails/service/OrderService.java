package com.supertails.service;

import com.supertails.model.*;
import com.supertails.repository.*;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.util.List;
import com.supertails.model.Order.OrderStatus;
import java.util.LinkedHashMap;
import java.util.Map;

@Service
@RequiredArgsConstructor
public class OrderService {

    private final OrderRepository orderRepository;
    private final UserRepository userRepository;
    private final CartService cartService;

    @Transactional
    public Order placeOrder(String email, String shippingAddress) {
        User user = userRepository.findByEmail(email)
            .orElseThrow(() -> new RuntimeException("User not found"));

        Cart cart = cartService.getOrCreateCart(email);

        if (cart.getItems().isEmpty())
            throw new RuntimeException("Cart is empty");

        List<OrderItem> orderItems = cart.getItems().stream()
            .map(ci -> OrderItem.builder()
                .product(ci.getProduct())
                .quantity(ci.getQuantity())
                .priceAtPurchase(ci.getProduct().getPrice())
                .build())
            .toList();

        BigDecimal total = orderItems.stream()
            .map(oi -> oi.getPriceAtPurchase().multiply(BigDecimal.valueOf(oi.getQuantity())))
            .reduce(BigDecimal.ZERO, BigDecimal::add);

        Order order = Order.builder()
            .user(user)
            .shippingAddress(shippingAddress)
            .totalAmount(total)
            .status(Order.OrderStatus.PENDING)
            .build();

        orderItems.forEach(oi -> oi.setOrder(order));
        order.setItems(orderItems);

        Order saved = orderRepository.save(order);
        cartService.clearCart(email);
        return saved;
    }

    public List<Order> getOrdersByUser(String email) {
        User user = userRepository.findByEmail(email)
            .orElseThrow(() -> new RuntimeException("User not found"));
        return orderRepository.findByUserIdOrderByPlacedAtDesc(user.getId());
    }

    public Order getOrderById(Long id) {
        return orderRepository.findById(id)
            .orElseThrow(() -> new RuntimeException("Order not found"));
    }

    public Map<OrderStatus, Boolean> getTrackingSteps(OrderStatus currentStatus) {
    // All steps in order
    OrderStatus[] steps = {
        OrderStatus.PENDING,
        OrderStatus.CONFIRMED,
        OrderStatus.SHIPPED,
        OrderStatus.DELIVERED
    };

    Map<OrderStatus, Boolean> trackingMap = new LinkedHashMap<>();
    boolean reached = false;

    for (OrderStatus step : steps) {
        if (step == currentStatus) reached = true;
        trackingMap.put(step, step == currentStatus || isStepBefore(step, currentStatus));
    }

    return trackingMap;
}

private boolean isStepBefore(OrderStatus step, OrderStatus current) {
    OrderStatus[] steps = {
        OrderStatus.PENDING,
        OrderStatus.CONFIRMED,
        OrderStatus.SHIPPED,
        OrderStatus.DELIVERED
    };
    int stepIdx = java.util.Arrays.asList(steps).indexOf(step);
    int currIdx = java.util.Arrays.asList(steps).indexOf(current);
    return stepIdx < currIdx;
}

// Admin: update order status
@Transactional
public Order updateStatus(Long orderId, OrderStatus newStatus) {
    Order order = getOrderById(orderId);
    order.setStatus(newStatus);
    return orderRepository.save(order);
}

// Add these to existing OrderService.java

public List<Order> getAllOrders() {
    return orderRepository.findAllByOrderByPlacedAtDesc();
}

public List<Order> getOrdersByStatus(Order.OrderStatus status) {
    return orderRepository.findByStatusOrderByPlacedAtDesc(status);
}

public List<Order> getRecentOrders(int limit) {
    return orderRepository.findAllByOrderByPlacedAtDesc()
        .stream().limit(limit).toList();
}
}