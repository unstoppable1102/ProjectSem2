package com.bkap.projectsem2final.entities;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.io.Serializable;
import java.util.List;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Cart implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private Integer accountId;

    @OneToOne
    @JoinColumn(name = "accountId", referencedColumnName = "id", insertable = false, updatable = false)
    private Account account;

    @OneToMany(mappedBy = "cart")
    private List<CartItem> items;

}
