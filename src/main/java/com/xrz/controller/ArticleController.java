package com.xrz.controller;

import com.xrz.po.Article;
import com.xrz.po.Comment;
import com.xrz.service.ArticleService;
import com.xrz.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class ArticleController {
    @Autowired
    private ArticleService articleService;
    @Autowired
    private CommentService commentService;

    @RequestMapping(value = "/articleList",method = RequestMethod.GET)
    private String articleList(Model model){
        List<Article> article = articleService.getList(0,1000);
        model.addAttribute("articleList",article);
        System.out.println(article);
        return "articleList";
    }

    @RequestMapping(value = "/toAddArticle",method = RequestMethod.POST,produces = "text/plain;charset=UTF-8")
    @ResponseBody
    private String addArticle(Article article){
        int i = articleService.addArticle(article);
        String res = "success";
        return res;
    }

    @RequestMapping(value = "/toUpdateArticle",method = RequestMethod.POST,produces = "text/plain;charset=UTF-8")
    @ResponseBody
    private String updateArticle(Article article){
        int i = articleService.updateArticle(article);
        String res = "success";
        return res;
    }

    @RequestMapping(value = "/updateArticle/{articleId}", method = RequestMethod.GET)
    private String updateArticle(@PathVariable("articleId") Integer id, Model model) {
        Article updateArticle = articleService.getArticleById(id);
        model.addAttribute("updateArticle", updateArticle);
        return "updateArticle";
    }

    @RequestMapping(value = "/detail/{articleId}", method = RequestMethod.GET)
    private String detail(@PathVariable("articleId") Integer id, Model model) {
        Article article = articleService.getArticleById(id);
        model.addAttribute("article", article);
        List<Comment> comment = commentService.findCommentById(id);
        model.addAttribute("comments",comment);
        System.out.println(comment);
        return "articleDetail";
    }

    @RequestMapping(value = "/myArticle/{userId}",method = RequestMethod.GET)
    private String myArticleList(@PathVariable("userId") Integer userId,Model model){
        List<Article> myArticle = articleService.getMyArticle(userId);
        model.addAttribute("myArticle",myArticle);
        System.out.println(myArticle);
        return "myArticle";
    }

    @RequestMapping(value = "/del/{articleId}", method = RequestMethod.GET)
    @ResponseBody
    private String deleteArticleById(@PathVariable("articleId") Integer id) {
        int i = articleService.deleteArticleById(id);
        return "success";
    }
}
