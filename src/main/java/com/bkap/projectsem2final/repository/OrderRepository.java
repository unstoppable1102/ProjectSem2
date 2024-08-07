package com.bkap.projectsem2final.repository;

import com.bkap.projectsem2final.entities.Order;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface OrderRepository extends JpaRepository<Order, Integer> {

    @Query("select o from Order o order by o.orderDate DESC")
    Page<Order> findAll(Pageable pageable);
    Order findOrderById(int id);
    @Query("SELECT COUNT(o) FROM Order o WHERE o.account.id = :accountId")
    Integer countByAccountId(@Param("accountId") Integer accountId);
    Page<Order> findByAccountId(Integer accountId, Pageable pageable);
    List<Order> findByAccountId(Integer accountId);
}