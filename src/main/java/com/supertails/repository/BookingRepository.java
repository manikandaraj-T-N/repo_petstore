package com.supertails.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.supertails.model.Booking;

public interface BookingRepository extends JpaRepository<Booking, Long> {
    List<Booking> findByUserIdOrderByBookedAtDesc(Long userId);
}