package com.bkap.projectsem2final.entities;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Size;
import lombok.*;

@Entity
@Table(name = "post_categories")
@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class PostCategory {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @NotEmpty(message = "Tên danh mục bài viết không được trống")
    @Size(min = 5, max = 50, message = "Name must be between 5 and 50 characters")
    @Column(name = "name", columnDefinition = "NVARCHAR(50)")
    private String name;

    @Column(name = "active")
    private boolean active;

    private String image;

    @Column(name = "description", columnDefinition = "TEXT")
    private String description;

    private String slug;

    @Transient
    private Integer postCount;


}
