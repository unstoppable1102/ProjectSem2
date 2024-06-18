package com.bkap.projectsem2final.repository;

import com.bkap.projectsem2final.entities.PostCategory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PostCategoryRepository extends JpaRepository<PostCategory,Integer> {
}
