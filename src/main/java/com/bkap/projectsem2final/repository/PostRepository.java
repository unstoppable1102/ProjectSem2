package com.bkap.projectsem2final.repository;

import com.bkap.projectsem2final.entities.Post;
import com.bkap.projectsem2final.entities.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PostRepository extends JpaRepository<Post,Integer> {
    Page<Post> findPostByPostCategoryId(Integer postCategoryId, Pageable pageable);
    Page<Post> findAll(Pageable pageable);
    Page<Post> findByNameContainingIgnoreCase(String keyword, Pageable pageable);
    List<Post> findTop4ByOrderByNameAsc();
    Integer countPostByPostCategoryId(Integer postCategoryId);
    List<Post> findPostByPostCategoryId(Integer postCategoryId);
}
