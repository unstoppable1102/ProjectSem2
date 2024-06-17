package com.bkap.projectsem2final.service;

import com.bkap.projectsem2final.entities.Post;
import com.bkap.projectsem2final.entities.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import java.util.List;

public interface PostService extends  GenericService<Post, Integer> {
    Page<Post> findByCategory(Integer categoryId, Pageable pageable);

    Page<Post> findAll(int page, int size);

    Page<Post> search(String keyword, Pageable pageable);
    List<Post> findTop4ByOrderByNameAsc();

    Page<Post> findAll(int page, int size, Sort sort);
    List<Post> findByCategory(Integer categoryId);
}
