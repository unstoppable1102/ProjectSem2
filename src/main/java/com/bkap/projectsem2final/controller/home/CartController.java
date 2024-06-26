package com.bkap.projectsem2final.controller.home;

import com.bkap.projectsem2final.entities.Cart;
import com.bkap.projectsem2final.entities.CartItem;
import com.bkap.projectsem2final.service.CartItemService;
import com.bkap.projectsem2final.service.CartService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequiredArgsConstructor
@RequestMapping("cart")
@SessionAttributes("userId")
public class CartController {

    private final CartService cartService;
    private final CartItemService cartItemService;

    @ModelAttribute("totalPrice")
    public Double getTotalPrice(@ModelAttribute("userId") Integer userId) {
        return cartService.calculateTotalPrice(userId);
    }

    @ModelAttribute("countCartItem")
    public Integer getCountCartItem(@ModelAttribute("userId") Integer userId) {
        return cartService.countItemsInCart(userId);
    }


    @GetMapping
    public String showCart(Model model, @ModelAttribute("userId") int userId) {
        model.addAttribute("cartItem", cartItemService.findByCart(cartService.findByAccountId(userId)));
        model.addAttribute("page", "cart");
        return "home";
    }

    @GetMapping("add/{proId}")
    public String showAddCart(@PathVariable int proId, @ModelAttribute("userId") int userId,
                              @ModelAttribute CartItem cartItem) {
        int cartId = cartService.findByAccountId(userId).getId();
        var findCart = cartItemService.findByCartIdAndProductId(cartId, proId);
        if (findCart == null) {
            cartItem.setProductId(proId);
            cartItem.setCartId(cartService.findByAccountId(userId).getId());
        }else {
            findCart.setQuantity(findCart.getQuantity() + cartItem.getQuantity());
            cartItemService.update(findCart);
        }
        cartItemService.save(cartItem);
        return "redirect:/cart";
    }


    @GetMapping("delete/{id}")
    public String deleteCart(@PathVariable int id) {
        cartItemService.delete(id);
        return "redirect:/cart";
    }

    @GetMapping("updateCart/{proId}/{quantity}")
    public String updateCart(@PathVariable Integer proId, @ModelAttribute("userId") Integer userId, @PathVariable int quantity, Model model) {
        Cart cart = cartService.findByAccountId(userId);
        var data = cartItemService.findByCartIdAndProductId(cart.getId(), proId);
        data.setQuantity(quantity);
        cartItemService.update(data);
        return "redirect:/cart";
    }

}
