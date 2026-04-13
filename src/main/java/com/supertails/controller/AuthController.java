package com.supertails.controller;

import com.supertails.model.*;
import com.supertails.service.UserService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

@Controller
@RequiredArgsConstructor
public class AuthController {

    private final UserService userService;

    // ─── Login ───
    @GetMapping("/login")
    public String loginPage(@RequestParam(required = false) String error,
                            @RequestParam(required = false) String logout,
                            @RequestParam(required = false) String expired,
                            Model model) {
        if (error != null)   model.addAttribute("errorMsg", "Invalid email or password.");
        if (logout != null)  model.addAttribute("logoutMsg", "You have been logged out.");
        if (expired != null) model.addAttribute("errorMsg", "Your session has expired.");
        return "auth/login";
    }

    // ─── Register ───
    @GetMapping("/register")
    public String registerPage(Model model) {
        model.addAttribute("user", new User());
        return "auth/register";
    }

    @PostMapping("/register")
    public String registerSubmit(@Valid @ModelAttribute("user") User user,
                                 BindingResult result,
                                 Model model) {
        if (result.hasErrors()) return "auth/register";

        if (userService.emailExists(user.getEmail())) {
            model.addAttribute("emailError", "Email is already registered.");
            return "auth/register";
        }

        userService.registerUser(user);
        return "redirect:/login?registered=true";
    }
}
