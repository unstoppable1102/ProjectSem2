package com.bkap.projectsem2final.service.impl;

import com.bkap.projectsem2final.entities.Wishlist;
import com.bkap.projectsem2final.repository.WishlistRepository;
import com.bkap.projectsem2final.service.WishlistService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
@RequiredArgsConstructor
public class WishlistServiceImpl implements WishlistService {
    private final WishlistRepository wishlistRepository;

    @Override
    public List<Wishlist> findWishlistsByAccountId(Integer accountId) {
        return wishlistRepository.findWishlistsByAccountId(accountId);
    }

    @Override
    public List<Wishlist> findAll() {
        return wishlistRepository.findAll();
    }

    @Override
    public Wishlist findById(Integer id) {
        return wishlistRepository.findById(id).orElseThrow(() -> new RuntimeException("Wishlist not found"));
    }

    @Override
    public boolean save(Wishlist wishlist) {
        try {
            wishlistRepository.save(wishlist);
            return true;
        }catch (Exception e){
            throw new RuntimeException("Wishlist could not be saved");
        }
    }

    @Override
    public boolean update(Wishlist wishlist) {
        return false;
    }

    @Override
    public void delete(Integer id) {
        wishlistRepository.deleteById(id);
    }
}
