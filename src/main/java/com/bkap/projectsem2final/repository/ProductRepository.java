package com.bkap.projectsem2final.repository;

import com.bkap.projectsem2final.entities.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductRepository extends JpaRepository<Product, Integer> {

     List<Product> findProductsByCategoryId(Integer categoryId);

     List<Product> findProductsByBrandId(Integer brandId);

     List<Product> findTop10ByOrderByCreateDateAsc();

     List<Product> findTop8ByOrderByCreateDateDesc();

     List<Product> findProductByFeaturedIsTrue();

     @Query("select p from Product p where p.price >= :min and p.price <= :max order by p.price ASC ")
     Page<Product> findByPriceBetween(double min, double max, Pageable pageable);

     Integer countProductByCategoryId(Integer categoryId);

     Integer countProductByBrandId(Integer brandId);

     @Query("SELECT p FROM Product p WHERE p.category.id = :categoryId AND p.id <> :productId")
     List<Product> findProductsByCategoryIdExcludingProductId(Integer categoryId, Integer productId);

     //Paginate
     Page<Product> findAll(Pageable pageable);

     Page<Product> findByProductNameContainingIgnoreCase(String keyword, Pageable pageable);
}