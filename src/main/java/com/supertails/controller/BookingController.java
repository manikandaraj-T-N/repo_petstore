package com.supertails.controller;

import com.supertails.model.Booking;
import com.supertails.model.User;
import com.supertails.service.BookingService;
import com.supertails.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.math.BigDecimal;

@Controller
@RequiredArgsConstructor
@RequestMapping("/booking")
public class BookingController {

    private final BookingService bookingService;
    private final UserService userService;

    // Show booking confirmation form (GET)
    @GetMapping("/confirm")
    public String showConfirm(
            @RequestParam String serviceName,
            @RequestParam String serviceCategory,
            @RequestParam BigDecimal price,
            @RequestParam String clinicName,
            @RequestParam String clinicAddress,
            Model model) {

        model.addAttribute("serviceName", serviceName);
        model.addAttribute("serviceCategory", serviceCategory);
        model.addAttribute("price", price);
        model.addAttribute("clinicName", clinicName);
        model.addAttribute("clinicAddress", clinicAddress);

        return "category/booking-confirm";
    }

    // Submit booking (POST) → save to DB → redirect to success
    @PostMapping("/submit")
    public String submitBooking(
            @RequestParam String serviceName,
            @RequestParam String serviceCategory,
            @RequestParam BigDecimal price,
            @RequestParam String clinicName,
            @RequestParam String clinicAddress,
            @AuthenticationPrincipal UserDetails userDetails,
            Model model) {


                   if (userDetails == null) {
        return "redirect:/login";
    }

        User user = userService.findByEmail(userDetails.getUsername());

        Booking booking = bookingService.createBooking(
                user, serviceName, serviceCategory,
                price, clinicName, clinicAddress);

        model.addAttribute("booking", booking);
        return "category/booking-success";
    }

    // View all bookings for current user
    @GetMapping("/my-bookings")
    public String myBookings(
            @AuthenticationPrincipal UserDetails userDetails,
            Model model) {

                 if (userDetails == null) {
        return "redirect:/login";
    }
        User user = userService.findByEmail(userDetails.getUsername());
        model.addAttribute("bookings", bookingService.getUserBookings(user.getId()));
        return "category/my-bookings";
    }
}