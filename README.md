# 🐾 Supertails — Full Stack Platform

Pet Care E-Commerce + Food Delivery + Service Booking
Built with **Spring Boot 3 + Thymeleaf + MySQL + Spring Security (Session)**

---

## 📁 Project Structure

```
supertails/
├── pom.xml
└── src/
    └── main/
        ├── java/com/supertails/
        │   ├── SupertailsApplication.java         ← Entry point
        │   │
        │   ├── config/
        │   │   └── SecurityConfig.java            ← Spring Security setup
        │   │
        │   ├── controller/
        │   │   ├── AuthController.java            ← /login, /register
        │   │   ├── HomeController.java            ← /home
        │   │   ├── ProductController.java         ← (next)
        │   │   ├── CartController.java            ← (next)
        │   │   ├── OrderController.java           ← (next)
        │   │   └── AdminController.java           ← (next)
        │   │
        │   ├── entity/
        │   │   ├── User.java
        │   │   ├── Product.java                   ← (next)
        │   │   ├── Category.java                  ← (next)
        │   │   ├── Cart.java                      ← (next)
        │   │   ├── CartItem.java                  ← (next)
        │   │   ├── Order.java                     ← (next)
        │   │   └── OrderItem.java                 ← (next)
        │   │
        │   ├── repository/
        │   │   ├── UserRepository.java
        │   │   ├── ProductRepository.java         ← (next)
        │   │   ├── CartRepository.java            ← (next)
        │   │   └── OrderRepository.java           ← (next)
        │   │
        │   └── service/
        │       ├── CustomUserDetailsService.java  ← Spring Security hook
        │       ├── UserService.java
        │       ├── ProductService.java            ← (next)
        │       ├── CartService.java               ← (next)
        │       └── OrderService.java              ← (next)
        │
        └── resources/
            ├── application.properties
            ├── templates/
            │   ├── home.html
            │   ├── auth/
            │   │   ├── login.html
            │   │   └── register.html
            │   ├── products/
            │   │   ├── list.html
            │   │   └── detail.html
            │   ├── cart/
            │   │   └── cart.html
            │   ├── orders/
            │   │   └── my-orders.html
            │   └── admin/
            │       └── dashboard.html
            └── static/
                ├── css/
                ├── js/
                └── images/
```

---

## 🚀 Getting Started

### 1. Create MySQL Database
```sql
CREATE DATABASE supertails_db;
```

### 2. Update `application.properties`
```properties
spring.datasource.username=root
spring.datasource.password=your_password
```

### 3. Run the app
```bash
mvn spring-boot:run
```
App starts at: **http://localhost:8080**

---

## 🧩 Modules Roadmap

| Module              | Status       |
|---------------------|--------------|
| Project Setup       | ✅ Done       |
| User Auth           | ✅ Done       |
| Product Catalog     | 🔜 Next       |
| Search & Filters    | 🔜 Planned    |
| Cart & Checkout     | 🔜 Planned    |
| Order Tracking      | 🔜 Planned    |
| Admin Dashboard     | 🔜 Planned    |

---

## 🔐 Roles

| Role       | Access                          |
|------------|---------------------------------|
| CUSTOMER   | Browse, cart, orders, profile   |
| ADMIN      | Full access + admin dashboard   |

---

## 🛠 Tech Stack

| Layer      | Technology                        |
|------------|-----------------------------------|
| Backend    | Spring Boot 3.2, Java 17          |
| Frontend   | Thymeleaf, HTML/CSS/JS            |
| Database   | MySQL 8                           |
| Security   | Spring Security (Session-based)   |
| ORM        | Spring Data JPA / Hibernate       |
| Build      | Maven                             |
