package com.bkap.projectsem2final.repository;

import com.bkap.projectsem2final.entities.Account;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AccountRepository extends JpaRepository<Account, Integer> {
    public Account findByUsername(String username);
    public boolean existsByUsername(String username);
}