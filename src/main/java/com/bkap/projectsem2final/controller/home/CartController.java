package com.bkap.projectsem2final.controller.home;

import com.bkap.projectsem2final.entities.Account;
import com.bkap.projectsem2final.entities.CartItem;
import com.bkap.projectsem2final.service.CartItemService;
import com.bkap.projectsem2final.service.CartService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;
import java.util.Map;

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

    @GetMapping("add/{proId}/{accId}")
    public String showAddCart(@PathVariable int proId, @PathVariable int accId,
                              @ModelAttribute CartItem cartItem) {
        int cartId = cartService.findByAccountId(accId).getId();
        var findCart = cartItemService.findByCartIdAndProductId(cartId, proId);
        if (findCart == null) {
            cartItem.setProductId(proId);
            cartItem.setCartId(cartService.findByAccountId(accId).getId());
        }else {
            findCart.setQuantity(findCart.getQuantity() + cartItem.getQuantity());
            cartItemService.update(findCart);
        }
        cartItemService.save(cartItem);
        return "redirect:/";
    }


    @GetMapping("delete/{id}")
    public String deleteCart(@PathVariable int id) {
        cartItemService.delete(id);
        return "redirect:/";
    }

    @GetMapping("updateCart/{productId}/{quantity}")
    public String updateCart(@PathVariable("productId") Integer productId, @PathVariable("quantity") int quantity, Model model) {
        var data = cartItemService.findByProductId(productId);
        data.setQuantity(quantity);
        cartItemService.update(data);
        return "redirect:/cart";
    }

}
