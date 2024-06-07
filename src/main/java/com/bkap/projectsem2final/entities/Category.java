package com.bkap.projectsem2final.entities;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@Entity
@Table(name = "categories")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Category {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @NotBlank(message = "Tên danh mục không được để trống")
    @Column(name = "name", columnDefinition = "NVARCHAR(50)")
    private String name;

    @Column(name = "active")
    private boolean active;

    @Column(name = "image")
    private String image;

    @Transient
    private Integer productCount;

    @OneToMany(mappedBy = "category", fetch = FetchType.LAZY)
    private List<Product> products;
}