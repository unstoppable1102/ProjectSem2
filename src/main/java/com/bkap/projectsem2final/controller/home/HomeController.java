package com.bkap.projectsem2final.controller.home;


import com.bkap.projectsem2final.entities.*;
import com.bkap.projectsem2final.service.*;
import com.bkap.projectsem2final.util.Cipher;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;

@Controller
@RequiredArgsConstructor
@SessionAttributes("userId")
public class HomeController {

    private final ProductService productService;
    private final CategoryService categoryService;
    private final BrandService brandService;
    private final AccountService accountService;
    private final CartService cartService;

    @GetMapping
    public String home(Model model) {
        model.addAttribute("categories", categoryService.findAll());
        model.addAttribute("brands", brandService.findAll());
        model.addAttribute("products", productService.findAll());
        model.addAttribute("wishlist" , new Wishlist());
        model.addAttribute("cartItem", new CartItem());
        model.addAttribute("top10Products", productService.findTop10ByOrderByCreateDateAsc());
        model.addAttribute("newArrivals", productService.findTop8ByOrderByCreateDateDesc());
        model.addAttribute("features", productService.findProductByFeaturedIsTrue());
        model.addAttribute("page", "index");
        return "home";
    }

    @GetMapping("register")
    public String register(Model model) {
        model.addAttribute("account", new Account());
        return "home/register";
    }

    @PostMapping("register")
    public String registerProcess (@Valid @ModelAttribute("account") Account account, BindingResult result, Model model) {
        if (result.hasErrors()) {
            model.addAttribute("account", account);
            return "home/register";
        }else {
            if (accountService.existsByUsername(account.getUsername())) {
                model.addAttribute("error", "This username is already existed");
                return "home/register";
            } else {
                String password = Cipher.GenerateMD5(account.getPassword());
                account.setPassword(password);
                account.setRole(false);
                account.setStatus(true);
                account.setAvatar("user.png");
                accountService.save(account);
                return "redirect:/login";
            }
        }
    }

    @GetMapping("logout")
    public String logout(HttpServletRequest req, SessionStatus sessionStatus) {
        HttpSession session = req.getSession();
        session.removeAttribute("userId");
        session.invalidate();
        sessionStatus.setComplete();
        return "redirect:/";
    }

    @GetMapping("login")
    public String login() {
        return "home/login";
    }

    @PostMapping("login")
    public String loginProcess(String username, String password, Model model, HttpServletRequest req) {
        Account ac = accountService.findByUsername(username);
        String passwordMD5 = Cipher.GenerateMD5(password);
        if (ac == null || !ac.getPassword().equals(passwordMD5)) {
            model.addAttribute("error", "Invalid username or password");
            return "home/login";
        }

        var data = accountService.findByUsername(ac.getUsername()).getId();
        Cart cart = cartService.findByAccountId(data);
//
        if(cart == null){
            cart = new Cart();
            cart.setAccountId(ac.getId());
            cart.setAccount(ac);
            cartService.save(cart);
        }
        HttpSession session = req.getSession();
        session.setMaxInactiveInterval(3600);
        session.setAttribute("userId", ac.getId());
        session.setAttribute("avatar", ac.getAvatar());
        session.setAttribute("email", ac.getEmail());
        session.setAttribute("address", ac.getAddress());
        session.setAttribute("phone", ac.getPhone());
        session.setAttribute("fullName", ac.getFullName());
        session.setAttribute("cart",cart);
        System.out.println(ac.getEmail());
        return "redirect:/";
    }

    @GetMapping("my-profile")
    public String myProfile(@ModelAttribute("userId") Integer userId, Model model) {
        model.addAttribute("account", accountService.findById(userId));
        model.addAttribute("page", "my-profile");
        return "home";
    }

    @PostMapping("my-profile/update")
    public String updateMyProfile(@Valid @ModelAttribute Account account, BindingResult result, Model model,
                                  @RequestParam(value="file", required = false) MultipartFile file,
                                  HttpServletRequest req) {
        if (result.hasErrors()) {
            model.addAttribute("page", "my-profile");
            model.addAttribute("account", account);
            return "admin";
        }else{
            if(file != null && !file.isEmpty()) {
                //neu tải têp mới
                String uploadRootPath = req.getServletContext().getRealPath("resources/images");
                File f = new File(uploadRootPath + "/" + file.getOriginalFilename());

                try {
                    //Lưu ảnh tệp mới
                    File destination = new File(f.getAbsolutePath() + "/" + file.getOriginalFilename());
                    file.transferTo(destination);
                    //Cập nhật đường dẫn ảnh mới vào account
                    account.setAvatar(file.getOriginalFilename());
                } catch (Exception e) {
                    model.addAttribute("error", e.getMessage());
                    model.addAttribute("account", account);
                    model.addAttribute("page", "my-profile");
                    return "admin";
                }
            } else {
                var accountOld = accountService.findById(account.getId());
                account.setAvatar(accountOld.getAvatar());
            }
            accountService.update(account);
            return "redirect:/";
        }
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
