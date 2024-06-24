package com.bkap.projectsem2final.entities;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "order_item")
@NoArgsConstructor
@AllArgsConstructor
public class OrderItem {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Integer id;

    private Integer orderId;
    @ManyToOne
    @JoinColumn(name = "orderId", referencedColumnName = "id", updatable = false, insertable = false)
    private Order order;

    private Integer productId;
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name="productId", referencedColumnName = "id", insertable = false, updatable = false)
    private Product product;

    private int quantity;
    private float price;

}