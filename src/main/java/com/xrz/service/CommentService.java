package com.xrz.service;

import com.xrz.po.Comment;

import java.util.List;

public interface CommentService {
    List<Comment> findCommentById(Integer articleId);

    int addComment(Comment comment);
}
