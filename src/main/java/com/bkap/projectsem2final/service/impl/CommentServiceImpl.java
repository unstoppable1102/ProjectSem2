package com.bkap.projectsem2final.service.impl;

import com.bkap.projectsem2final.entities.Comment;
import com.bkap.projectsem2final.repository.CommentRepository;
import com.bkap.projectsem2final.service.CommentService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class CommentServiceImpl implements CommentService {

    private final CommentRepository commentRepository;

    @Override
    public List<Comment> findAll() {
        return commentRepository.findAll();
    }

    @Override
    public Comment findById(Integer id) {
        return null;
    }

    @Override
    public boolean save(Comment comment) {
        try {
            this.commentRepository.save(comment);
            return true;
        }catch (Exception e){
            throw new RuntimeException(e);
        }
    }

    @Override
    public boolean update(Comment comment) {
        return false;
    }

    @Override
    public void delete(Integer id) {

    }
}
