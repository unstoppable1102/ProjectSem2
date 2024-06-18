package com.bkap.projectsem2final.repository;

import com.bkap.projectsem2final.entities.Cart;
import com.bkap.projectsem2final.entities.CartItem;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface CartItemRepository extends JpaRepository<CartItem, Integer> {
    List<CartItem> findByCart(Cart cart);

    @Query("select count(ci) from CartItem ci where ci.cart.account.id = :accountId")
    Integer countCartItemsByAccountId(Integer accountId);

    CartItem findByCartIdAndProductId(Integer cartId, Integer productId);

    List<CartItem> findByCartId(Integer cartId);

     CartItem findByProductId(Integer productId);
}