package com.xrz.dao;

import com.xrz.po.Comment;

import java.util.List;

public interface CommentDao {
    int addComment(Comment comment);

    List<Comment> findCommentById(Integer articleId);
}
