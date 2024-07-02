package com.bkap.projectsem2final.service.impl;

import com.bkap.projectsem2final.entities.Cart;
import com.bkap.projectsem2final.entities.CartItem;
import com.bkap.projectsem2final.entities.Product;
import com.bkap.projectsem2final.repository.CartItemRepository;
import com.bkap.projectsem2final.repository.CartRepository;
import com.bkap.projectsem2final.repository.ProductRepository;
import com.bkap.projectsem2final.service.CartService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Map;

@Service
@RequiredArgsConstructor
public class CartServiceImpl implements CartService {

    private final CartRepository cartRepository;
    private final CartItemRepository cartItemRepository;
    private final ProductRepository productRepository;


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
    public Double calculateTotalPrice(Integer accountId) {
        Cart cart = cartRepository.findByAccountId(accountId);
        if (cart == null) return 0.0;
        List<CartItem> cartItems = cart.getItems();
        return cartItems.stream().mapToDouble(item ->{
            Product product = productRepository.findById(item.getProductId()).orElseThrow(()->new RuntimeException("Product not found"));
            return item.getQuantity() * product.getPrice();
        }).sum();
    }

    @Override
    public void updateCartItems(Integer accountId, Map<String, String> quantities) {
        Cart cart = cartRepository.findByAccountId(accountId);
        List<CartItem> cartItems = cartItemRepository.findByCartId(cart.getId());
        for (CartItem item : cartItems) {
            String quantityStr = quantities.get(String.valueOf(item.getProduct().getId()));
            if (quantityStr != null) {
                int quantity = Integer.parseInt(quantityStr);
                item.setQuantity(quantity);
                cartItemRepository.save(item);
            }

        }
    }

    @Override
    public void clearCart(Integer accountId) {
        List<CartItem> cartItems = cartItemRepository.findByCartId(cartRepository.findByAccountId(accountId).getId());
        cartItemRepository.deleteAll(cartItems);
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
