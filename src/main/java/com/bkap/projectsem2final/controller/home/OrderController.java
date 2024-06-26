package com.bkap.projectsem2final.controller.home;

import com.bkap.projectsem2final.entities.CartItem;
import com.bkap.projectsem2final.entities.Order;
import com.bkap.projectsem2final.entities.OrderItem;
import com.bkap.projectsem2final.enums.OrderStatus;
import com.bkap.projectsem2final.service.CartItemService;
import com.bkap.projectsem2final.service.CartService;
import com.bkap.projectsem2final.service.OrderItemService;
import com.bkap.projectsem2final.service.OrderService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@Controller(value = "OrderControllerOfHome")
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

        order.setAccountId(userId);
        order.setOrderStatus(OrderStatus.NEW);
        orderService.save(order);

        for (CartItem cartItem : cartItems) {
            OrderItem orderItem = new OrderItem();
            orderItem.setOrderId(order.getId());
            orderItem.setProductId(cartItem.getProductId());
            orderItem.setQuantity(cartItem.getQuantity());
            orderItem.setPrice(cartItem.getProduct().getPrice() * cartItem.getQuantity());
            orderItemService.save(orderItem);
        }
        cartService.clearCart(userId);
        return "redirect:/";
    }
}
