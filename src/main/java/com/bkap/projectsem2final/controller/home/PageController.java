package com.bkap.projectsem2final.controller.home;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PageController {
    @GetMapping("/contact")
    public String contact(Model model) {
        model.addAttribute("page", "page/contact");
        return "home";

    }

    @GetMapping("/about")
    public String about(Model model) {
        model.addAttribute("page", "page/about");
        return "home";

    }

    @GetMapping("/blogs")
    public String blogs(Model model) {
        model.addAttribute("page", "page/blogs");
        return "home";

    }

    @GetMapping("/privacy-policy")
    public String privacy(Model model) {
        model.addAttribute("page", "page/privacy");
        return "home";

    }


}
