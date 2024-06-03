package com.bkap.projectsem2final.service.impl;

import com.bkap.projectsem2final.entities.Category;
import com.bkap.projectsem2final.repository.CategoryRepository;
import com.bkap.projectsem2final.repository.ProductRepository;
import com.bkap.projectsem2final.service.CategoryService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class CategoryServiceImpl implements CategoryService {

    private final CategoryRepository categoryRepository;
    private final ProductRepository productRepository;

    @Override
    public List<Category> findAll() {
        return categoryRepository.findAll().stream()
                .map(category -> {
                    category.setProductCount(productRepository.countProductByCategoryId(category.getId()));
                    return category;
                }).collect(Collectors.toList());
    }

    @Override
    public Category findById(Integer id) {
        return categoryRepository.findById(id).orElseThrow(() ->
                new RuntimeException("Không tìm thấy mã danh mục"));
    }

    @Override
    public boolean save(Category category) {
        try {
            this.categoryRepository.save(category);
            return true;
        }catch (Exception e){
            throw new RuntimeException(e);
        }
    }

    @Override
    public boolean update(Category category) {
        try {
            this.categoryRepository.save(category);
            return true;
        }catch (Exception e){
            throw new RuntimeException(e);
        }
    }

    @Override
    public void delete(Integer id) {
        categoryRepository.deleteById(id);
    }
}
