package com.bkap.projectsem2final.controller.admin;

import com.bkap.projectsem2final.service.OrderService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller(value = "OrderControllerOfAdmin")
@RequiredArgsConstructor
@RequestMapping("admin/order")
public class OrderController {
    private final OrderService orderService;

    @GetMapping("list")
    public String list(Model model) {
        model.addAttribute("page", "order/list");
        model.addAttribute("orders", orderService.findAll());
        return "admin";

    }
}
