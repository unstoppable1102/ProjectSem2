package com.bkap.projectsem2final.service;

import com.bkap.projectsem2final.entities.Order;
import com.bkap.projectsem2final.entities.OrderItem;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface OrderService extends GenericService<Order, Integer>{
    Page<Order> findAll(int page, int size) ;
    Order findById(int orderId);
    Integer countByAccountId(Integer accountId);
    Page<Order> findByAccountId (int page, int size,int accountId);
    List<Order> findByAccountId(int accountId);

}
