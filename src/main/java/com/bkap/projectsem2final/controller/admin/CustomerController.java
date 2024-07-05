package com.bkap.projectsem2final.controller.admin;

import com.bkap.projectsem2final.entities.Account;
import com.bkap.projectsem2final.service.AccountService;
import com.bkap.projectsem2final.service.OrderService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/customer")
@RequiredArgsConstructor
public class CustomerController {

    private final AccountService accountService;
    private final OrderService orderService;

    @GetMapping("list")
    public String listCustomers(Model model) {
        model.addAttribute("accounts", accountService.findAll());
        model.addAttribute("page", "customer/list");
        return "admin";
    }

    @GetMapping("detail/{id}")
    public String customerDetail(@PathVariable int id, Model model) {
        model.addAttribute("account", accountService.findById(id));
        model.addAttribute("orders", orderService.findByAccountId(id));
        model.addAttribute("page", "customer/detail");
        return "admin";
    }
}
