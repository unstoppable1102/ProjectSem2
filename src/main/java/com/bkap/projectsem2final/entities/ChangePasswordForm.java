package com.bkap.projectsem2final.entities;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class ChangePasswordForm {
    private String currentPassword;
    private String newPassword;
    private String confirmPassword;
}
