package com.supertails.scheduler;

import java.time.LocalDateTime;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.supertails.model.Order;
import com.supertails.repository.OrderRepository;

import lombok.RequiredArgsConstructor;

@Component
@RequiredArgsConstructor
public class OrderStatusScheduler {

    private final OrderRepository orderRepository;

    @Scheduled(fixedDelay = 600000) // runs every 60 seconds
    public void progressOrderStatuses() {
        LocalDateTime now = LocalDateTime.now();

        orderRepository.findAll().forEach(order -> {
            if (order.getStatus() == Order.OrderStatus.PENDING
                    && order.getPlacedAt().plusMinutes(1).isBefore(now)) {
                order.setStatus(Order.OrderStatus.CONFIRMED);
                orderRepository.save(order);

            } else if (order.getStatus() == Order.OrderStatus.CONFIRMED
                    && order.getUpdatedAt().plusMinutes(2).isBefore(now)) {
                order.setStatus(Order.OrderStatus.SHIPPED);
                orderRepository.save(order);

            } else if (order.getStatus() == Order.OrderStatus.SHIPPED
                    && order.getUpdatedAt().plusMinutes(3).isBefore(now)) {
                order.setStatus(Order.OrderStatus.DELIVERED);
                orderRepository.save(order);
            }
        });
    }
}