package com.bkap.projectsem2final.repository;

import com.bkap.projectsem2final.entities.Cart;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CartRepository extends JpaRepository<Cart, Integer> {
     Cart findByAccountId(Integer accountId);

}