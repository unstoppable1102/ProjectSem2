package com.bkap.projectsem2final.controller.home;

import com.bkap.projectsem2final.entities.CartItem;
import com.bkap.projectsem2final.service.CartItemService;
import com.bkap.projectsem2final.service.CartService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequiredArgsConstructor
@RequestMapping("cart")
public class CartController {

    private final CartService cartService;
    private final CartItemService cartItemService;

    @GetMapping("{id}")
    public String showCart(Model model, @PathVariable int id) {
        model.addAttribute("cartItem", cartItemService.findByCart(cartService.findByAccountId(id)));
        model.addAttribute("page", "cart");
        return "home";
    }

    @GetMapping("add/{proId}/{accId}")
    public String showAddCart(Model model, @PathVariable int proId, @PathVariable int accId,
                              @ModelAttribute CartItem cartItem) {
        cartItem.setProductId(proId);
        cartItem.setCartId(cartService.findByAccountId(accId).getId());
        cartItemService.save(cartItem);
        return "redirect:/";
    }

    @GetMapping("delete/{id}")
    public String deleteCart(Model model, @PathVariable int id) {
        cartItemService.delete(id);
        return "redirect:/";
    }

}
