package com.supertails.repository;

import com.supertails.model.Order;
import com.supertails.model.Order.OrderStatus;

import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface OrderRepository extends JpaRepository<Order, Long> {
    List<Order> findByUserIdOrderByPlacedAtDesc(Long userId);
    List<Order> findAllByOrderByPlacedAtDesc();
    List<Order> findByStatusOrderByPlacedAtDesc(Order.OrderStatus status);

    // List<Order> findByStatus(OrderStatus status);
}