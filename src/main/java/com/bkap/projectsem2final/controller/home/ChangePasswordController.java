package com.bkap.projectsem2final.controller.home;

import com.bkap.projectsem2final.entities.ChangePasswordForm;
import com.bkap.projectsem2final.service.AccountService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@RequiredArgsConstructor
@SessionAttributes("userId")
public class ChangePasswordController {

    private final AccountService accountService;

    @GetMapping("change-password")
    public String changePassword(Model model) {
        model.addAttribute("changePasswordForm", new ChangePasswordForm());
        return "home/change-password";
    }

    @PostMapping("change-password")
    public String changePasswordSubmit(
            @Valid @ModelAttribute("changePasswordForm") ChangePasswordForm changePasswordForm,
            @ModelAttribute("userId") Integer userId,
            BindingResult result,
            Model model) {
        if (result.hasErrors()) {
            return "home/change-password";
        }

        if (!changePasswordForm.getConfirmPassword().equals(changePasswordForm.getNewPassword())) {
            result.rejectValue("confirmPassword","error.confirmPassword", "Passwords do not match");
            return "home/change-password";
        }

        boolean isChanged = accountService.changePassword(accountService.findById(userId).getUsername(),changePasswordForm.getCurrentPassword(), changePasswordForm.getNewPassword());
        if (isChanged) {
            model.addAttribute("msg", "ChangePassword successful");
        } else {
            model.addAttribute("msg", "ChangePassword failed");
        }
        return "home/change-password";
    }

}
