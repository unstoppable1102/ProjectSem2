package com.bkap.projectsem2final.controller.home;


import com.bkap.projectsem2final.entities.Account;
import com.bkap.projectsem2final.service.AccountService;
import com.bkap.projectsem2final.service.BrandService;
import com.bkap.projectsem2final.service.CategoryService;
import com.bkap.projectsem2final.service.ProductService;
import com.bkap.projectsem2final.util.Cipher;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;


@Controller
@RequiredArgsConstructor
public class HomeController {

    private final ProductService productService;
    private final CategoryService categoryService;
    private final BrandService brandService;
    private final AccountService accountService;

    @GetMapping
    public String home(Model model) {
        model.addAttribute("categories", categoryService.findAll());
        model.addAttribute("brands", brandService.findAll());
        model.addAttribute("products", productService.findAll());
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
    public String register(@ModelAttribute Account account, Model model) {
        if (accountService.existsByUsername(account.getUsername())) {
            model.addAttribute("error", "This username is already existed");
            return "home/register";
        }else{
            String password = Cipher.GenerateMD5(account.getPassword());
            account.setPassword(password);
            account.setRole(false);
            account.setStatus(true);
            account.setAvatar("user.png");
            accountService.save(account);
            return "redirect:/login";
        }
    }

    @GetMapping("logout")
    public String logout(HttpServletRequest req) {
        HttpSession session = req.getSession();
        session.invalidate();
        return "redirect:/";
    }

    @GetMapping("login")
    public String login(Model model) {
        return "home/login";
    }

    @PostMapping("login")
    public String loginProcess(@ModelAttribute Account account, Model model, HttpServletRequest req) {
        Account ac = accountService.findByUsername(account.getUsername());
        String passwordMD5 = Cipher.GenerateMD5(account.getPassword());

        if (ac == null || !ac.getPassword().equals(passwordMD5)) {
            model.addAttribute("error", "Invalid username or password");
            return "home/login";
        }
        HttpSession session = req.getSession();
        session.setMaxInactiveInterval(3600);
        session.setAttribute("userId", ac.getId());
        session.setAttribute("avatar", ac.getAvatar());
        session.setAttribute("email", ac.getEmail());
        session.setAttribute("address", ac.getAddress());
        session.setAttribute("phone", ac.getPhone());
        session.setAttribute("fullName", ac.getFullName());
        System.out.println(ac.getEmail());
        return "redirect:/";
    }

    @GetMapping("my-profile")
    public String myProfile(Model model) {
        model.addAttribute("page", "my-profile");
        return "home";
    }


}
