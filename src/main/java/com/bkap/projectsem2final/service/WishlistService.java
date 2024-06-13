package com.bkap.projectsem2final.service;

import com.bkap.projectsem2final.entities.Wishlist;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface WishlistService  extends GenericService<Wishlist, Integer>{
    List<Wishlist> findWishlistsByAccountId(Integer accountId);
    List<Integer> getWishlistProductIds(Integer accountId);
}
