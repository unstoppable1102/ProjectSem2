package com.bkap.projectsem2final.entities;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.io.Serializable;
import java.util.List;

@Getter
@Setter
@Entity
@Table(name = "accounts")
@NoArgsConstructor
@AllArgsConstructor
public class Account implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Integer id;

    @Column(name = "username")
    @NotNull(message = "Username is required")
    private String username;

    private String password;
    @Column(name = "fullName", columnDefinition = "nvarchar(50)")
    @NotNull(message = "FullName is required")
    private String fullName;
    @NotNull(message = "Email is required")
    private String email;
    private String phone;
    @NotNull(message = "Address is required")
    private String address;
    private boolean role;
    private String avatar;
    private boolean status;

    @OneToMany(mappedBy = "account", fetch = FetchType.LAZY)
    private List<Wishlist> wishlists;

}