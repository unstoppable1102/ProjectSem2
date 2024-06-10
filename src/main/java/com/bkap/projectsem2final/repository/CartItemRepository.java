package com.bkap.projectsem2final.repository;

import com.bkap.projectsem2final.entities.Cart;
import com.bkap.projectsem2final.entities.CartItem;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CartItemRepository extends JpaRepository<CartItem, Integer> {
    List<CartItem> findByCart(Cart cart);
}