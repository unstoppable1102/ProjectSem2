package com.bkap.projectsem2final.service.impl;

import com.bkap.projectsem2final.entities.Wishlist;
import com.bkap.projectsem2final.repository.WishlistRepository;
import com.bkap.projectsem2final.service.WishlistService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

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
    public List<Integer> getWishlistProductIds(Integer accountId) {
        return wishlistRepository.findWishlistsByAccountId(accountId)
                .stream()
                .map(Wishlist::getProductId)
                .collect(Collectors.toList());
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
            Optional<Wishlist> wishlistOptional = wishlistRepository.findByAccountIdAndProductId(wishlist.getAccountId(), wishlist.getProductId());
            if (wishlistOptional.isPresent()) {
                return false;
            }
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
