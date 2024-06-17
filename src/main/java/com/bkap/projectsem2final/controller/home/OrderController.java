package com.bkap.projectsem2final.controller.home;

import com.bkap.projectsem2final.entities.Order;
import com.bkap.projectsem2final.entities.OrderDetail;
import com.bkap.projectsem2final.service.OrderService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequiredArgsConstructor
@RequestMapping("orders")
public class OrderController {

    private final OrderService orderService;

    @GetMapping("{accountId}")
    public String listOrders(@PathVariable("accountId") Integer accountId, Model model) {
        List<Order> orders = orderService.getOrdersByAccountId(accountId);
        model.addAttribute("orders", orders);
        model.addAttribute("page", "order");
        return "home";
    }

    @GetMapping("/{orderId}")
    public String showOrder(@PathVariable Integer orderId, Model model) {
        Order order = orderService.getOrderById(orderId);
        model.addAttribute("order", order);
        model.addAttribute("page", "order-detail");
        return "home";

    }

    @PostMapping
    public String createOrder(@RequestParam("accountId") Integer accountId,
                              @RequestParam("productIds") List<Integer> productIds,
                              @RequestParam("quantities") List<Integer> quantities,
                              @RequestParam("prices") List<Float> prices) {
        List<OrderDetail> orderDetails = new ArrayList<>();
        for (Integer productId : productIds) {
            OrderDetail orderDetail = new OrderDetail();
            orderDetail.setProductId(productId);
            orderDetail.setQuantity(quantities.get(productId));
            orderDetail.setPrice(prices.get(productId));
            orderDetails.add(orderDetail);
        }

        orderService.createOrder(accountId, orderDetails);
        return "redirect:/orders/" + accountId;
    }
}
