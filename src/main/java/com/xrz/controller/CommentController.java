package com.xrz.controller;

import com.xrz.po.Comment;
import com.xrz.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class CommentController {
    @Autowired
    private CommentService commentService;

    @RequestMapping(value = "/addComment",method = RequestMethod.POST,produces = "text/plain;charset=UTF-8")
    @ResponseBody
    private String addComment(Comment comment){
        int i = commentService.addComment(comment);
        String res = "success";
        return res;
    }
}
