package com.bkap.projectsem2final.service;

import com.bkap.projectsem2final.entities.Cart;
import com.bkap.projectsem2final.entities.CartItem;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public interface CartItemService extends GenericService<CartItem, Integer>{
    List<CartItem> findByCart(Cart cart);
    CartItem findByCartIdAndProductId(Integer cartId, Integer productId);
    List<CartItem> findByCartId(Integer cartId);
}
