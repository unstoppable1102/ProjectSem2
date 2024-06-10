package com.bkap.projectsem2final.controller.home;

import com.bkap.projectsem2final.entities.Wishlist;
import com.bkap.projectsem2final.service.ProductService;
import com.bkap.projectsem2final.service.WishlistService;
import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


@Controller
@RequiredArgsConstructor
@RequestMapping("/wishlist")
public class WishlistController {

    private final WishlistService wishlistService;
    private final ProductService productService;

    @GetMapping("/{id}")
    public String wishlist(Model model,@PathVariable int id){
        model.addAttribute("wishlists" , wishlistService.findWishlistsByAccountId(id));
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

}
