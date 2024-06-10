package com.bkap.projectsem2final.service.impl;

import com.bkap.projectsem2final.entities.Cart;
import com.bkap.projectsem2final.repository.CartRepository;
import com.bkap.projectsem2final.service.CartService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CartServiceImpl implements CartService {
    private final CartRepository cartRepository;

    public CartServiceImpl(CartRepository cartRepository) {
        this.cartRepository = cartRepository;
    }

    @Override
    public Cart findByAccountId(Integer accountId) {
        return cartRepository.findByAccountId(accountId);
    }


    @Override
    public List<Cart> findAll() {
        return cartRepository.findAll();
    }

    @Override
    public Cart findById(Integer id) {
        return cartRepository.findById(id).orElseThrow(() -> new RuntimeException("Cart not found"));
    }

    @Override
    public boolean save(Cart cart) {
        try {

            cartRepository.save(cart);
            return true;
        }catch (Exception e) {
            return false;
        }
    }

    @Override
    public boolean update(Cart cart) {
        try {
            cartRepository.save(cart);
            return true;
        }catch (Exception e) {
            return false;
        }
    }

    @Override
    public void delete(Integer id) {
        cartRepository.deleteById(id);
    }
}
