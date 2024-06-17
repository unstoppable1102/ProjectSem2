package com.bkap.projectsem2final.service;

import com.bkap.projectsem2final.entities.Order;
import com.bkap.projectsem2final.entities.OrderDetail;

import java.util.List;

public interface OrderService{
    List<Order> getOrdersByAccountId(Integer accountId);
    Order createOrder(Integer accountId, List<OrderDetail> orderDetails);
    Order getOrderById(Integer orderId);
}
