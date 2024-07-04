package com.bkap.projectsem2final.service.impl;

import com.bkap.projectsem2final.entities.Post;
import com.bkap.projectsem2final.entities.Product;
import com.bkap.projectsem2final.repository.PostRepository;
import com.bkap.projectsem2final.repository.ProductRepository;
import com.bkap.projectsem2final.service.PostService;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class PostServiceImpl implements PostService {

    private final PostRepository postRepository;

    @Override
    public Page<Post> findByCategory(Integer categoryId, Pageable pageable) {
        return postRepository.findPostByPostCategoryId(categoryId, pageable);
    }

    @Override
    public Page<Post> findAll(int page, int size) {
        Pageable pageable = PageRequest.of(page, size);
        return postRepository.findAll(pageable);
    }

    @Override
    public Page<Post> search(String keyword, Pageable pageable) {
        return postRepository.findByNameContainingIgnoreCase(keyword, pageable);
    }

    @Override
    public List<Post> findTop4ByOrderByNameAsc() {
        return postRepository.findTop4ByOrderByNameAsc();
    }

    @Override
    public Page<Post> findAll(int page, int size, Sort sort) {
        Pageable pageable = PageRequest.of(page, size, sort);
        return postRepository.findAll(pageable);
    }

    @Override
    public List<Post> findByCategory(Integer categoryId) {
        return postRepository.findPostByPostCategoryId(categoryId);
    }

    @Override
    public List<Post> findAll() {
        return List.of();
    }

    @Override
    public Post findById(Integer id) {
        return postRepository.findById(id).orElseThrow(() -> new RuntimeException("PostId is not found"));

    }

    @Override
    public boolean save(Post post) {
        try {
            this.postRepository.save(post);
            return true;
        }catch (Exception e){
            throw new RuntimeException(e);
        }
    }

    @Override
    public boolean update(Post post) {
        try {
            this.postRepository.save(post);
            return true;
        }catch (Exception e){
            throw new RuntimeException(e);
        }
    }

    @Override
    public void delete(Integer id) {
        postRepository.deleteById(id);
    }
}
