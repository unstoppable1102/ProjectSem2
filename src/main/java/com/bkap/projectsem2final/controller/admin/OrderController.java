package com.bkap.projectsem2final.controller.admin;


import com.bkap.projectsem2final.entities.Account;
import com.bkap.projectsem2final.entities.Order;
import com.bkap.projectsem2final.enums.OrderStatus;
import com.bkap.projectsem2final.service.OrderService;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller(value = "OrderControllerOfAdmin")
@RequiredArgsConstructor
@RequestMapping("admin/order")
public class OrderController {

    private final OrderService orderService;

    @GetMapping("list")
    public String listOrders(@RequestParam(defaultValue = "0", required = false) int page,
                             @RequestParam(defaultValue = "6", required = false) int size,
                             Model model) {
        Page<Order> orders = orderService.findAll(page, size);

        model.addAttribute("page", "order/index");
        model.addAttribute("orders", orders);
        model.addAttribute("currentPage", page);
        model.addAttribute("size", size);
        return "admin";
    }

    @GetMapping("detail/{id}")
    public String orderDetail(@PathVariable int id, Model model) {
        Order order = orderService.findById(id);
        if (order != null) {
            Account account = order.getAccount();
            Integer orderCount = orderService.countByAccountId(account.getId());

            account.setOrderCount(orderCount);

            model.addAttribute("order", order);
            model.addAttribute("account", account);
            model.addAttribute("page", "order/detail");
        }

        return "admin";
    }

    @GetMapping("delete/{id}")
    public String delete(@PathVariable Integer id) {
        orderService.delete(id);
        return "redirect:/admin/order/list";
    }

    @PostMapping("updateOrderStatus/{id}")
    public String updateOrderStatus(@PathVariable int id ,
                                    @RequestParam("orderStatus") OrderStatus orderStatus) {
        Order order = orderService.findById(id);
        if (order != null){
            order.setOrderStatus(orderStatus);
            orderService.update(order);
        }

        return "redirect:/admin/order/list";
    }
}
