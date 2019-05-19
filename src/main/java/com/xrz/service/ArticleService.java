package com.xrz.service;

import com.xrz.po.Article;

import java.util.List;

public interface ArticleService {
    List<Article> getList(int start, int pageNum);

    int addArticle(Article article);

    int updateArticle(Article article);

    int deleteArticleById(Integer id);

    Article getArticleById(Integer id);

    List<Article> getMyArticle(Integer userId);
}
