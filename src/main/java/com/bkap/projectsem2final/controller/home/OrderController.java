package com.bkap.projectsem2final.controller.home;

import com.bkap.projectsem2final.entities.*;
import com.bkap.projectsem2final.enums.OrderStatus;
import com.bkap.projectsem2final.service.CartItemService;
import com.bkap.projectsem2final.service.CartService;
import com.bkap.projectsem2final.service.OrderItemService;
import com.bkap.projectsem2final.service.OrderService;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@Controller
@RequiredArgsConstructor
@RequestMapping("orders")
@SessionAttributes("userId")
public class OrderController {

    private final OrderService orderService;
    private final CartItemService cartItemService;
    private final CartService cartService;
    private final OrderItemService orderItemService;

    @ModelAttribute("totalPrice")
    public Double getTotalPrice(@ModelAttribute("userId") Integer userId) {
        return cartService.calculateTotalPrice(userId);
    }

    @ModelAttribute("countCartItem")
    public Integer getCountCartItem(@ModelAttribute("userId") Integer userId) {
        return cartService.countItemsInCart(userId);
    }

    @GetMapping
    public String checkout(Model model, @ModelAttribute("userId") Integer userId) {
        model.addAttribute("cartItem", cartItemService.findByCart(cartService.findByAccountId(userId)));
        model.addAttribute("order", new Order());
        model.addAttribute("page", "checkout");
        return "home";
    }

    @PostMapping
    public String createOrder(@ModelAttribute("userId") Integer userId,
            @ModelAttribute Order order, Model model) {
        List<CartItem> cartItems = cartItemService.findByCart(cartService.findByAccountId(userId));

        double result =0.0;

        order.setAccountId(userId);
        order.setOrderStatus(OrderStatus.NEW);
        orderService.save(order);

        for (CartItem cartItem : cartItems) {
            OrderItem orderItem = new OrderItem();
            orderItem.setOrderId(order.getId());
            orderItem.setProductId(cartItem.getProductId());
            orderItem.setQuantity(cartItem.getQuantity());
            orderItem.setPrice(cartItem.getProduct().getPrice() * cartItem.getQuantity());
            result += cartItem.getProduct().getPrice() * cartItem.getQuantity();
            orderItemService.save(orderItem);
        }
        order.setTotal(result);
        orderService.save(order);

        cartService.clearCart(userId);
        return "redirect:/";
    }

    @GetMapping("/list")
    public String orders(
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(defaultValue = "1") int size,
            @ModelAttribute("userId") Integer userId,
            Model model) {

            Page<Order> orders = orderService.findByAccountId(page, size, userId);
            Integer counter = orderService.countByAccountId(userId);
            model.addAttribute("orders", orders);
            model.addAttribute("currentPage", page);
            model.addAttribute("counterOrder", counter);
            model.addAttribute("size", size);
            model.addAttribute("page", "order/list");

        return "home";
    }
}
