package com.bkap.projectsem2final.repository;

import com.bkap.projectsem2final.entities.Wishlist;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface WishlistRepository extends JpaRepository<Wishlist, Integer> {
    List<Wishlist> findWishlistsByAccountId(Integer accountId);
   Optional<Wishlist> findByAccountIdAndProductId(Integer accountId, Integer productId);
}