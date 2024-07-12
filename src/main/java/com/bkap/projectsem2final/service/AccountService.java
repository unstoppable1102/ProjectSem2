package com.bkap.projectsem2final.service;

import com.bkap.projectsem2final.entities.Account;
import org.springframework.stereotype.Service;

@Service
public interface AccountService extends GenericService<Account, Integer> {
    Account findByUsername(String username);
    boolean existsByUsername(String username);
    boolean changePassword(String username, String oldPassword, String newPassword);
}
