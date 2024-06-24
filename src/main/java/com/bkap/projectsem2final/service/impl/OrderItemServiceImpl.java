package com.bkap.projectsem2final.service.impl;

import com.bkap.projectsem2final.entities.OrderItem;
import com.bkap.projectsem2final.repository.OrderItemRepository;
import com.bkap.projectsem2final.service.OrderItemService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class OrderItemServiceImpl implements OrderItemService {

    private final OrderItemRepository orderItemRepository;

    @Override
    public List<OrderItem> findAll() {
        return orderItemRepository.findAll();
    }

    @Override
    public OrderItem findById(Integer id) {
        return orderItemRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("OrderItem Not Found"));
    }

    @Override
    public boolean save(OrderItem orderItem) {
        try {
            orderItemRepository.save(orderItem);
            return true;
        }catch (Exception e){
            throw new RuntimeException("OrderItem Not Saved");
        }
    }

    @Override
    public boolean update(OrderItem orderItem) {
        try {
            orderItemRepository.save(orderItem);
            return true;
        }catch (Exception e){
            throw new RuntimeException("OrderItem Not Updated");
        }
    }

    @Override
    public void delete(Integer id) {
        orderItemRepository.deleteById(id);
    }
}
