package com.bkap.projectsem2final.controller.admin;


import com.bkap.projectsem2final.entities.Order;
import com.bkap.projectsem2final.entities.OrderItem;
import com.bkap.projectsem2final.service.CartItemService;
import com.bkap.projectsem2final.service.CartService;
import com.bkap.projectsem2final.service.OrderItemService;
import com.bkap.projectsem2final.service.OrderService;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequiredArgsConstructor
@RequestMapping("/admin/order")
public class OrderAdminController {

    private final OrderService orderService;
    private final CartItemService cartItemService;
    private final CartService cartService;
    private final OrderItemService orderItemService;



    @GetMapping("list")
    public String listOrders(Model model, @RequestParam(defaultValue = "0", required = false) int page,
                             @RequestParam(defaultValue = "6", required = false) int size) {
        Page<Order> orders = orderService.findAll(page, size);

        model.addAttribute("page", "order/index");
        model.addAttribute("orders", orders);
        model.addAttribute("currentPage", page);
        model.addAttribute("size", size);
        model.addAttribute("page", "order/index");
        return "admin";
    }

    @GetMapping("detail/{id}")
    public String orderDetail(@PathVariable int id, Model model) {
        model.addAttribute("order", orderService.findById(id));
        model.addAttribute("page", "order/detail");
        return "admin";
    }

    @GetMapping("delete/{id}")
    public String delete(@PathVariable Integer id) {
        orderService.delete(id);
        return "redirect:/admin/order/list";
    }



}
