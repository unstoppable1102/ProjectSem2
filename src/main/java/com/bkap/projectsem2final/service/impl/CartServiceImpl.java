package com.bkap.projectsem2final.service.impl;

import com.bkap.projectsem2final.entities.Cart;
import com.bkap.projectsem2final.repository.CartItemRepository;
import com.bkap.projectsem2final.repository.CartRepository;
import com.bkap.projectsem2final.service.CartService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class CartServiceImpl implements CartService {

    private final CartRepository cartRepository;
    private final CartItemRepository cartItemRepository;


    @Override
    public List<Cart> findAll() {
        return cartRepository.findAll();
    }

    @Override
    public Cart findByAccountId(Integer accountId) {
        return cartRepository.findByAccountId(accountId);
    }

    @Override
    public Integer countItemsInCart(Integer accountId) {
        return cartItemRepository.countCartItemsByAccountId(accountId);
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
