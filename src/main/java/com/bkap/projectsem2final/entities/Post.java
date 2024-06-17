package com.bkap.projectsem2final.entities;


import jakarta.persistence.*;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "posts")
@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class Post {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @NotEmpty(message = "Tên bài viết không để trống")
    @Size(min = 5, max = 50, message = "Name must be between 5 and 50 characters long")
    @Column(name = "name", columnDefinition = "NVARCHAR(50)")
    private String name;

    private String image;

    @NotEmpty(message = "Mô tả bài viết không để trống")
    @Column(name = "description", columnDefinition = "TEXT")
    private String description;

    @NotEmpty(message = "Nội dung bài viết không để trống")
    @Column(name = "content", columnDefinition = "TEXT")
    private String content;

    private String slug;

    private Integer postCategoryId;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name="postCategoryId", referencedColumnName = "id", insertable = false, updatable = false)
    private PostCategory postCategory;


}
