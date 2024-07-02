package com.bkap.projectsem2final.entities;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import jakarta.persistence.*;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import java.util.Date;
import java.util.List;

@Entity
@Table(name = "products")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Column(name = "productName", columnDefinition = "NVARCHAR(50)")
    @NotBlank(message = "ProductName is required")
    private String productName;


    @Column(name = "quantity")
    @NotNull(message = "Quantity is required")
    @Min(value = 1, message = "Quantity must be greater than 1")
    private Integer quantity;

    @Column(name = "price")
    @NotNull(message = "Price is required")
    @Min(value = 0, message = "Price must be greater than 0.0")
    private float price;

    @Column(name = "priceOld")
    @NotNull(message = "Price is required")
    @Min(value = 0, message = "Price must be greater than 0.0")
    private float priceOld;

    @Column(name = "description", columnDefinition = "TEXT")
    @NotBlank(message = "Description must be not null")
    private String description;

    @Column(name = "image")
    private String image;

    @Column(name = "createDate")
    @CreationTimestamp
    @Temporal(TemporalType.TIMESTAMP)
    private Date createDate;

    @Column(name = "updateDate")
    @UpdateTimestamp
    @Temporal(TemporalType.TIMESTAMP)
    private Date updateDate;

    @Column(name = "status")
    private boolean status;

    private Integer categoryId;

    private Integer brandId;

    private boolean featured = false;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name="categoryId", referencedColumnName = "id", insertable = false, updatable = false)
    private Category category;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name="brandId", referencedColumnName = "id", insertable = false, updatable = false)
    private Brand brand;

    @OneToMany(mappedBy = "product", fetch = FetchType.LAZY)
    @JsonIgnore
    private List<Wishlist> wishlists;

    @OneToMany(mappedBy = "product", fetch = FetchType.LAZY)
    @JsonIgnore
    private List<CartItem> cartItems;

}
