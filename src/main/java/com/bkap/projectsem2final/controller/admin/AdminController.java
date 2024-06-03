package com.bkap.projectsem2final.controller.admin;

import com.bkap.projectsem2final.entities.Account;
import com.bkap.projectsem2final.service.AccountService;
import com.bkap.projectsem2final.util.Cipher;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/admin")
@RequiredArgsConstructor
public class AdminController {

    private final AccountService accountService;

    @GetMapping("")
    public String index(Model model) {
        model.addAttribute("page", "index");
        return "admin";
    }

    @GetMapping("/crm/dashboard")
    public String crmDashBoard(Model model) {
        model.addAttribute("page", "crm/dashboard");
        return "admin";
    }

    @GetMapping("/crm/calendar")
    public String crmCalendar(Model model) {
        model.addAttribute("page", "crm/calendar");
        return "admin";
    }

    @GetMapping("/crm/mail")
    public String crmMail(Model model) {
        model.addAttribute("page", "crm/mail");
        return "admin";
    }

    @GetMapping("/sales/dashboard")
            public String saleDashBoard(Model model) {
            model.addAttribute("page", "sales/dashboard");
        return "admin";
    }

    @GetMapping("login")
    public String login(Model model) {

        return "admin/login";
    }

    @PostMapping("login")
    public String login(Model model, String username, String password, HttpServletRequest request) {
        Account acc =  accountService.findByUsername(username);
        String passMD5 = Cipher.GenerateMD5(password);
        if (acc == null || !acc.getPassword().equals(passMD5) || !acc.isRole()) {
            model.addAttribute("msg", "Invalid username or password");
            return "admin/login";
        }
        HttpSession session = request.getSession();
        session.setMaxInactiveInterval(3600);
        session.setAttribute("admId", acc.getId());
        session.setAttribute("admName", acc.getUsername());
        session.setAttribute("admAvatar", acc.getAvatar());
        session.setAttribute("admEmail", acc.getEmail());
        session.setAttribute("admFullName", acc.getFullName());
        return "redirect:/admin";
    }

    @GetMapping("register")
    public String signUp(Model model) {
        return "admin/register";
    }

    @GetMapping("logout")
    public String logout(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.invalidate();

        return "redirect:/admin/login";
    }

    @GetMapping("profile")
    public String accountSetting(Model model) {
        model.addAttribute("page", "profile");
        return "admin";
    }
}
