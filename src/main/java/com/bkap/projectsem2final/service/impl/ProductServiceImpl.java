package com.bkap.projectsem2final.service.impl;

import com.bkap.projectsem2final.entities.Product;
import com.bkap.projectsem2final.repository.ProductRepository;
import com.bkap.projectsem2final.service.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ProductServiceImpl implements ProductService {


    private final ProductRepository productRepository;

    @Override
    public List<Product> findAll() {
        return productRepository.findAll();
    }

    @Override
    public Product findById(Integer id) {
        return productRepository.findById(id).orElseThrow(() -> new RuntimeException("ProductId is not found"));
    }

    @Override
    public boolean save(Product product) {
        try {
            this.productRepository.save(product);
            return true;
        }catch (Exception e){
            throw new RuntimeException(e);
        }
    }

    @Override
    public boolean update(Product product) {
        try {
            this.productRepository.save(product);
            return true;
        }catch (Exception e){
            throw new RuntimeException(e);
        }
    }

    @Override
    public void delete(Integer id) {
        productRepository.deleteById(id);
    }

    @Override
    public List<Product> findByCategory(Integer categoryId) {
        return productRepository.findProductsByCategoryId(categoryId);
    }


    @Override
    public List<Product> findByBrand(Integer brandId) {
        return productRepository.findProductsByBrandId(brandId);
    }

    @Override
    public List<Product> findTop8ByOrderByCreateDateDesc() {
        return productRepository.findTop8ByOrderByCreateDateDesc();
    }

    @Override
    public List<Product> findTop10ByOrderByCreateDateAsc() {
        return productRepository.findTop10ByOrderByCreateDateAsc();
    }

    @Override
    public List<Product> findProductByFeaturedIsTrue() {
        return productRepository.findProductByFeaturedIsTrue();
    }

    @Override
    public List<Product> findProductsByCategoryId(Integer categoryId) {
        return productRepository.findProductsByCategoryId(categoryId);
    }

    @Override
    public List<Product> findProductsByBrandId(Integer brandId) {
        return productRepository.findProductsByBrandId(brandId);
    }

    @Override
    public List<Product> findProductsByCategoryIdExcludingProductId(Integer categoryId, Integer productId) {
        return productRepository.findProductsByCategoryIdExcludingProductId(categoryId, productId);
    }

    @Override
    public Page<Product> findAll(int page, int size, Sort sort) {
        Pageable pageable = PageRequest.of(page, size, sort);
        return productRepository.findAll(pageable);
    }

    @Override
    public Page<Product> search(String keyword, Pageable pageable) {
        return productRepository.findByProductNameContainingIgnoreCase(keyword, pageable);
    }

    @Override
    public Page<Product> search(double min, double max, Pageable pageable) {
        return productRepository.findByPriceBetween(min, max, pageable);
    }

}
