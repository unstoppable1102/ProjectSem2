package com.bkap.projectsem2final.service.impl;

import com.bkap.projectsem2final.entities.Brand;
import com.bkap.projectsem2final.repository.BrandRepository;
import com.bkap.projectsem2final.repository.ProductRepository;
import com.bkap.projectsem2final.service.BrandService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class BrandServiceImpl implements BrandService {

    private final BrandRepository brandRepository;
    private final ProductRepository productRepository;

    @Override
    public List<Brand> findAll() {
        return brandRepository.findAll().stream()
                .peek(brand -> brand.setProductCount(productRepository.countProductByBrandId(brand.getId()))).collect(Collectors.toList());
    }

    @Override
    public Brand findById(Integer id) {
        return brandRepository.findById(id).orElseThrow(() ->
                new RuntimeException("Brand Id is not found: " + id));
    }

    @Override
    public boolean save(Brand brand) {
        try {
            brandRepository.save(brand);
            return true;
        }catch (Exception e){
            throw new RuntimeException("Save Brand failed");
        }
    }

    @Override
    public boolean update(Brand brand) {
        try {
            brandRepository.save(brand);
            return true;
        }catch (Exception e){
            throw new RuntimeException("Update Brand failed");
        }
    }

    @Override
    public void delete(Integer id) {
        brandRepository.deleteById(id);
    }
}
