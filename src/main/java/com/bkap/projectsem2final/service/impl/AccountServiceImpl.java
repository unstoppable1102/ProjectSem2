package com.bkap.projectsem2final.service.impl;

import com.bkap.projectsem2final.entities.Account;
import com.bkap.projectsem2final.repository.AccountRepository;
import com.bkap.projectsem2final.service.AccountService;
import com.bkap.projectsem2final.util.Cipher;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Objects;

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
    public boolean changePassword(String username, String oldPassword, String newPassword) {
        Account account = accountRepository.findByUsername(username);

        if (account == null || !Objects.equals(Cipher.GenerateMD5(oldPassword), account.getPassword())) {
            return false;
        }
        account.setPassword(Cipher.GenerateMD5(newPassword));
        accountRepository.save(account);

        return true;
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
