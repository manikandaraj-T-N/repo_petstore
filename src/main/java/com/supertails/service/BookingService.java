package com.supertails.service;

import java.math.BigDecimal;
import java.util.List;

import org.springframework.stereotype.Service;

import com.supertails.model.Booking;
import com.supertails.model.User;
import com.supertails.repository.BookingRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class BookingService {

    private final BookingRepository bookingRepository;

    public Booking createBooking(User user,
                                  String serviceName,
                                  String serviceCategory,
                                  BigDecimal price,
                                  String clinicName,
                                  String clinicAddress) {
        Booking booking = Booking.builder()
                .user(user)
                .serviceName(serviceName)
                .serviceCategory(serviceCategory)
                .price(price)
                .clinicName(clinicName)
                .clinicAddress(clinicAddress)
                .status(Booking.BookingStatus.CONFIRMED)
                .build();
        return bookingRepository.save(booking);
    }

    public List<Booking> getUserBookings(Long userId) {
        return bookingRepository.findByUserIdOrderByBookedAtDesc(userId);
    }

    public Booking getById(Long id) {
        return bookingRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Booking not found: " + id));
    }
}