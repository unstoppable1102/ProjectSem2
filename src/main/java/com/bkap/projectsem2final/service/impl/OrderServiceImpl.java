package com.bkap.projectsem2final.service.impl;

import com.bkap.projectsem2final.entities.Order;
import com.bkap.projectsem2final.entities.OrderDetail;
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
    public List<Order> getOrdersByAccountId(Integer accountId) {
        return orderRepository.findAll();
    }

    @Override
    public Order createOrder(Integer accountId, List<OrderDetail> orderDetails) {
        Order order = new Order();
        order.setAccountId(accountId);
        order.setOrderStatus(OrderStatus.NEW);
        order.setOrderDetails(orderDetails);

        for (OrderDetail orderDetail : orderDetails) {
            orderDetail.setOrder(order);
        }
        return orderRepository.save(order);
    }

    @Override
    public Order getOrderById(Integer orderId) {
        return orderRepository.findById(orderId)
                .orElseThrow(() -> new RuntimeException("Order not found"));
    }
}
