package com.bkap.projectsem2final.controller.home;

import com.bkap.projectsem2final.entities.CartItem;
import com.bkap.projectsem2final.entities.Wishlist;
import com.bkap.projectsem2final.service.CartService;
import com.bkap.projectsem2final.service.ProductService;
import com.bkap.projectsem2final.service.WishlistService;
import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@Controller
@RequiredArgsConstructor
@RequestMapping("/wishlist")
@SessionAttributes("userId")
public class WishlistController {

    private final WishlistService wishlistService;
    private final CartService cartService;

    @GetMapping
    public String wishlist(Model model,@ModelAttribute("userId") Integer userId){
        model.addAttribute("wishlists" , wishlistService.findWishlistsByAccountId(userId));
        List<Integer> wishlistProductIds = wishlistService.getWishlistProductIds(userId);
        model.addAttribute("wishlistProductIds", wishlistProductIds);
        model.addAttribute("cartItem", new CartItem());
        model.addAttribute("page" , "wishlist");
        return "home";
    }

    @PostMapping("add")
    public String addWishlist(Model model, @ModelAttribute Wishlist wishlist , HttpServletRequest req){
        model.addAttribute("wishlist", wishlist);
        wishlistService.save(wishlist);
        return "redirect:/";
    }

    @GetMapping("delete/{id}")
    public String deleteWishlist(Model model , @PathVariable int id){
        wishlistService.delete(id);
        return "redirect:/";
    }

    @GetMapping("/items")
    @ResponseBody
    public List<Integer> getWishlistProductIds(@RequestParam("accountId") Integer accountId) {
        return wishlistService.getWishlistProductIds(accountId);
    }

    @ModelAttribute("totalPrice")
    public Double getTotalPrice(HttpServletRequest req) {
        Integer id = (Integer) req.getSession().getAttribute("userId");
        if (id == null) return 0.0;
        return cartService.calculateTotalPrice(id);
    }

    @ModelAttribute("countCartItem")
    public Integer getCountCartItem(HttpServletRequest req) {
        Integer id = (Integer) req.getSession().getAttribute("userId");
        if (id == null) {
            return null;
        }
        return cartService.countItemsInCart(id);
    }
}
