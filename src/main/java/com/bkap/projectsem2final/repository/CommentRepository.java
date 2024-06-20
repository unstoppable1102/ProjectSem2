package com.bkap.projectsem2final.repository;

import com.bkap.projectsem2final.entities.Comment;
import com.bkap.projectsem2final.entities.Product;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CommentRepository extends JpaRepository<Comment,Integer> {
    List<Comment> findCommentByPostId(Integer categoryId);
    Integer countCommentByPostId(Integer postId);
}
