package com.supertails.model;

import jakarta.persistence.*;
import lombok.*;

import java.math.BigDecimal;
import java.time.LocalDateTime;

@Entity
@Table(name = "bookings")
@Getter @Setter
@NoArgsConstructor @AllArgsConstructor
@Builder
public class Booking {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id", nullable = false)
    private User user;

    @Column(nullable = false)
    private String serviceName;

    @Column(nullable = false)
    private String serviceCategory;

    @Column(nullable = false)
    private BigDecimal price;

    @Column(nullable = false)
    private String clinicName;

    @Column(nullable = false)
    private String clinicAddress;

    @Enumerated(EnumType.STRING)
    @Column(nullable = false)
    private BookingStatus status;

    @Column(name = "booked_at", updatable = false)
    private LocalDateTime bookedAt;

    @PrePersist
    protected void onCreate() {
        bookedAt = LocalDateTime.now();
        if (status == null) status = BookingStatus.CONFIRMED;
    }

    public enum BookingStatus {
        CONFIRMED, CANCELLED, COMPLETED
    }
}
