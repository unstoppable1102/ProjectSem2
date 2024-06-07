package com.bkap.projectsem2final.service;

import com.bkap.projectsem2final.entities.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface ProductService extends GenericService<Product, Integer> {
    List<Product> findByCategory(Integer categoryId);

    List<Product> findByBrand(Integer brandId);

    List<Product> findTop8ByOrderByCreateDateDesc();

    List<Product> findTop10ByOrderByCreateDateAsc();

    List<Product> findProductByFeaturedIsTrue();

    List<Product> findProductsByCategoryId(Integer categoryId);

    List<Product> findProductsByBrandId(Integer brandId);

    List<Product> findProductsByCategoryIdExcludingProductId(Integer categoryId, Integer productId);

    Page<Product> findAll(int page, int size, Sort sort);

    Page<Product> findAll(int page, int size);

    Page<Product> search(String keyword, Pageable pageable);

    Page<Product> search(double min, double max, Pageable pageable);

}
