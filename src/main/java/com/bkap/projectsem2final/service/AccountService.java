package com.bkap.projectsem2final.service;

import com.bkap.projectsem2final.entities.Account;
import org.springframework.stereotype.Service;

@Service
public interface AccountService extends GenericService<Account, Integer> {
    public Account findByUsername(String username);
    public boolean existsByUsername(String username);
}
