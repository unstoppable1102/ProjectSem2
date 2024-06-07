package com.bkap.projectsem2final.repository;

import com.bkap.projectsem2final.entities.Wishlist;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface WishlistRepository extends JpaRepository<Wishlist, Integer> {
    List<Wishlist> findWishlistsByAccountId(Integer accountId);
}