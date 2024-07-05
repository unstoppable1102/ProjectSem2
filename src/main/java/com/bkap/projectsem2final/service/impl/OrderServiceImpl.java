package com.bkap.projectsem2final.service.impl;

import com.bkap.projectsem2final.entities.Order;
import com.bkap.projectsem2final.entities.OrderItem;
import com.bkap.projectsem2final.enums.OrderStatus;
import com.bkap.projectsem2final.repository.OrderRepository;
import com.bkap.projectsem2final.service.OrderService;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class OrderServiceImpl implements OrderService {

    private final OrderRepository orderRepository;

    @Override
    public List<Order> findAll() {
        return orderRepository.findAll();
    }

    @Override
    public Order findById(Integer id) {
        return orderRepository.findById(id).orElseThrow(() -> new RuntimeException("Order not found"));
    }

    @Override
    public boolean save(Order order) {
        try {
            orderRepository.save(order);
            return true;
        }catch (Exception e) {
            throw new RuntimeException("Order not saved");
        }
    }

    @Override
    public boolean update(Order order) {
        try {
            orderRepository.save(order);
            return true;
        }catch (Exception e) {
            throw new RuntimeException("Order not updated");
        }
    }

    @Override
    public void delete(Integer id) {
        orderRepository.deleteById(id);
    }

    @Override
    public Page<Order> findAll(int page, int size) {
        Pageable pageable = PageRequest.of(page, size);
        return orderRepository.findAll(pageable);
    }

    @Override
    public Order findById(int orderId) {
        return orderRepository.findOrderById(orderId);
    }

    @Override
    public Integer countByAccountId(Integer accountId) {
        return orderRepository.countByAccountId(accountId);
    }

    @Override
    public Page<Order> findByAccountId(int page, int size,int accountId) {
        Pageable pageable = PageRequest.of(page, size);
        return orderRepository.findByAccountId(accountId, pageable);
    }

    @Override
    public List<Order> findByAccountId(int accountId) {
        return orderRepository.findByAccountId(accountId);
    }


}
