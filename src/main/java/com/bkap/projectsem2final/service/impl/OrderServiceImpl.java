package com.bkap.projectsem2final.service.impl;

import com.bkap.projectsem2final.entities.Order;
import com.bkap.projectsem2final.entities.OrderItem;
import com.bkap.projectsem2final.enums.OrderStatus;
import com.bkap.projectsem2final.repository.OrderRepository;
import com.bkap.projectsem2final.service.OrderService;
import lombok.RequiredArgsConstructor;
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
}
