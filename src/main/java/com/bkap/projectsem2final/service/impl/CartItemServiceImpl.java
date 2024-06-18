package com.bkap.projectsem2final.service.impl;

import com.bkap.projectsem2final.entities.Cart;
import com.bkap.projectsem2final.entities.CartItem;
import com.bkap.projectsem2final.repository.CartItemRepository;
import com.bkap.projectsem2final.service.CartItemService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class CartItemServiceImpl implements CartItemService {

    private final CartItemRepository cartItemRepository;

    @Override
    public List<CartItem> findByCart(Cart cart) {
        return cartItemRepository.findByCart(cart);
    }

    @Override
    public CartItem findByCartIdAndProductId(Integer cartId, Integer productId) {
        return cartItemRepository.findByCartIdAndProductId(cartId, productId);
    }

    @Override
    public List<CartItem> findByCartId(Integer cartId) {
        return cartItemRepository.findByCartId(cartId);
    }

    @Override
    public CartItem findByProductId(Integer productId) {
        return cartItemRepository.findByProductId(productId);
    }


    @Override
    public List<CartItem> findAll() {
        return cartItemRepository.findAll();
    }

    @Override
    public CartItem findById(Integer id) {
        return cartItemRepository.findById(id).orElseThrow(()
                -> new RuntimeException("CartItem Not Found"));
    }

    @Override
    public boolean save(CartItem cartItem) {
        try {
            cartItemRepository.save(cartItem);
            return true;
        }catch (Exception e){
            return false;
        }
    }

    @Override
    public boolean update(CartItem cartItem) {
        try {
            cartItemRepository.save(cartItem);
            return true;
        }catch (Exception e){
            return false;
        }
    }

    @Override
    public void delete(Integer id) {
        cartItemRepository.deleteById(id);
    }
}
