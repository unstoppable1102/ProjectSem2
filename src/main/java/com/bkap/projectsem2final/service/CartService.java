package com.bkap.projectsem2final.service;

import com.bkap.projectsem2final.entities.Cart;
import com.bkap.projectsem2final.entities.CartItem;
import org.springframework.stereotype.Service;

@Service
public interface CartService extends GenericService<Cart, Integer>{
    Cart findByAccountId(Integer accountId);
    Integer countItemsInCart(Integer accountId);
    Double calculateTotalPrice(Integer accountId);
}
