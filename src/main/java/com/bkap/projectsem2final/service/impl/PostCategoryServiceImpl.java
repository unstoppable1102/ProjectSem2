package com.bkap.projectsem2final.service.impl;

import com.bkap.projectsem2final.entities.PostCategory;
import com.bkap.projectsem2final.repository.CategoryRepository;
import com.bkap.projectsem2final.repository.PostCategoryRepository;
import com.bkap.projectsem2final.repository.PostRepository;
import com.bkap.projectsem2final.repository.ProductRepository;
import com.bkap.projectsem2final.service.PostCategoryService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class PostCategoryServiceImpl implements PostCategoryService {

    private final PostCategoryRepository postCategoryRepository;

    private  final PostRepository postRepository;


    @Override
    public List<PostCategory> findAll() {
        return postCategoryRepository.findAll().stream()
                .map(category -> {
                    category.setPostCount(postRepository.countPostByPostCategoryId(category.getId()));
                    return category;
                }).collect(Collectors.toList());
    }

    @Override
    public PostCategory findById(Integer id) {
        return postCategoryRepository.findById(id).orElseThrow(() ->
                new RuntimeException("Không tìm thấy mã  danh mục bai viet"));
    }

    @Override
    public boolean save(PostCategory postCategory) {
        try {
            this.postCategoryRepository.save(postCategory);
            return true;
        }catch (Exception e){
            throw new RuntimeException(e);
        }
    }

    @Override
    public boolean update(PostCategory postCategory) {
        try {
            this.postCategoryRepository.save(postCategory);
            return true;
        }catch (Exception e){
            throw new RuntimeException(e);
        }
    }

    @Override
    public void delete(Integer id) {
        postCategoryRepository.deleteById(id);
    }
}
