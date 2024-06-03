package com.bkap.projectsem2final.service;

import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface GenericService<T, K> {
    public List<T> findAll();
    public T findById(K id);
    public boolean save(T t);
    public boolean update(T t);
    public void delete(K id);
}
