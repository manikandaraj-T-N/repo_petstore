package com.supertails.controller;

import com.supertails.model.Order;
import com.supertails.model.Product;
import com.supertails.service.*;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
// import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("/admin")
@RequiredArgsConstructor
public class AdminController {

    private final ProductService productService;
    private final OrderService orderService;
    private final UserService userService;

    // ─── Dashboard Home ───
    @GetMapping
    public String dashboard(Model model) {
        model.addAttribute("totalProducts", productService.getAllAvailable().size());
        model.addAttribute("totalOrders", orderService.getAllOrders().size());
        model.addAttribute("totalUsers", userService.getAllUsers().size());
        model.addAttribute("pendingOrders", orderService.getOrdersByStatus(Order.OrderStatus.PENDING).size());
        model.addAttribute("recentOrders", orderService.getRecentOrders(5));
        return "admin/dashboard";
    }

    // ─── Products ───
    @GetMapping("/products")
    public String manageProducts(Model model) {
        model.addAttribute("products", productService.getAll());
        model.addAttribute("categories", productService.getAllCategories());
        model.addAttribute("newProduct", new Product());
        return "admin/products";
    }

    @PostMapping("/products/save")
    public String saveProduct(@ModelAttribute Product product) {
        productService.save(product);
        return "redirect:/admin/products?saved=true";
    }

    @PostMapping("/products/delete/{id}")
    public String deleteProduct(@PathVariable Long id) {
        productService.delete(id);
        return "redirect:/admin/products?deleted=true";
    }

    @GetMapping("/products/edit/{id}")
    public String editProduct(@PathVariable Long id, Model model) {
        model.addAttribute("product", productService.getById(id));
        model.addAttribute("categories", productService.getAllCategories());
        return "admin/product-form";
    }

    @PostMapping("/products/edit/{id}")
    public String updateProduct(@PathVariable Long id, @ModelAttribute Product product) {
        product.setId(id);
        productService.save(product);
        return "redirect:/admin/products?updated=true";
    }

    // ─── Orders ───
    @GetMapping("/orders")
    public String manageOrders(@RequestParam(required = false) String status, Model model) {
        var orders = (status != null && !status.isBlank())
            ? orderService.getOrdersByStatus(Order.OrderStatus.valueOf(status))
            : orderService.getAllOrders();
        model.addAttribute("orders", orders);
        model.addAttribute("statuses", Order.OrderStatus.values());
        model.addAttribute("selectedStatus", status);
        return "admin/orders";
    }

    @PostMapping("/orders/{id}/status")
    public String updateOrderStatus(@PathVariable Long id,
                                    @RequestParam String status) {
        orderService.updateStatus(id, Order.OrderStatus.valueOf(status));
        return "redirect:/admin/orders?updated=true";
    }

    // ─── Users ───
    @GetMapping("/users")
    public String manageUsers(Model model) {
        model.addAttribute("users", userService.getAllUsers());
        return "admin/users";
    }
}