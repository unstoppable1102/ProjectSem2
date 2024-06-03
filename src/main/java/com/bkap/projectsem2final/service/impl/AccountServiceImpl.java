package com.bkap.projectsem2final.service.impl;

import com.bkap.projectsem2final.entities.Account;
import com.bkap.projectsem2final.repository.AccountRepository;
import com.bkap.projectsem2final.service.AccountService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class AccountServiceImpl implements AccountService {

    private final AccountRepository accountRepository;

    @Override
    public Account findByUsername(String username) {
        return accountRepository.findByUsername(username);
    }

    @Override
    public boolean existsByUsername(String username) {
        return accountRepository.existsByUsername(username);
    }

    @Override
    public List<Account> findAll() {
        return accountRepository.findAll();
    }

    @Override
    public Account findById(Integer id) {
        return accountRepository.findById(id).orElseThrow(()
                -> new RuntimeException("AccountId not found"));
    }

    @Override
    public boolean save(Account account) {
        try {
            accountRepository.save(account);
            return true;
        } catch (Exception e) {
            throw new RuntimeException("Saving account failed");
        }
    }

    @Override
    public boolean update(Account account) {
        try {
            accountRepository.save(account);
            return true;
        } catch (Exception e) {
            throw new RuntimeException("Updating account failed");
        }
    }

    @Override
    public void delete(Integer id) {
        accountRepository.deleteById(id);
    }
}
