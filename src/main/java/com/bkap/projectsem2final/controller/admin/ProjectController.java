package com.bkap.projectsem2final.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class ProjectController {

    @GetMapping("project/dashboard")
    public String dashboard(Model model) {
        model.addAttribute("page", "project/dashboard");
        return "admin";
    }

    @GetMapping("project/list")
    public String projectList(Model model) {
        model.addAttribute("page", "project/list");
        return "admin";
    }

    @GetMapping("project/scrum-board")
    public String projectScrumBoard(Model model) {
        model.addAttribute("page", "project/scrum-board");
        return "admin";
    }

    @GetMapping("project/issue")
    public String projectIssue(Model model) {
        model.addAttribute("page", "project/issue");
        return "admin";
    }
}
