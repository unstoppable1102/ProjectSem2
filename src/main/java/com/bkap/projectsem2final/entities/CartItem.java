package com.bkap.projectsem2final.entities;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@Entity
@NoArgsConstructor
@AllArgsConstructor
public class CartItem {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Integer id;

    private Integer cartId;
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "cartId" , referencedColumnName = "id" , insertable = false , updatable = false)
    private Cart cart;

    private Integer productId;
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name="productId", referencedColumnName = "id", insertable = false, updatable = false)
    private Product product;

    private int quantity;



}