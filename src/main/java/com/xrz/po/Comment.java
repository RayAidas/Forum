package com.xrz.po;

public class Comment {
    private Integer commentId;
    private String commentUserName;
    private Integer commentArticleId;
    private String commentUserId;
    private String commentContent;
    private String commentCreatetime;

    public Integer getCommentId() {
        return commentId;
    }

    public void setCommentId(Integer commentId) {
        this.commentId = commentId;
    }

    public String getCommentUserName() {
        return commentUserName;
    }

    public void setCommentUserName(String commentUserName) {
        this.commentUserName = commentUserName;
    }

    public Integer getCommentArticleId() {
        return commentArticleId;
    }

    public void setCommentArticleId(Integer commentArticleId) {
        this.commentArticleId = commentArticleId;
    }

    public String getCommentUserId() {
        return commentUserId;
    }

    public void setCommentUserId(String commentUserId) {
        this.commentUserId = commentUserId;
    }

    public String getCommentContent() {
        return commentContent;
    }

    public void setCommentContent(String commentContent) {
        this.commentContent = commentContent;
    }

    public String getCommentCreatetime() {
        return commentCreatetime;
    }

    public void setCommentCreatetime(String commentCreatetime) {
        this.commentCreatetime = commentCreatetime;
    }

    @Override
    public String toString() {
        return "Comment{" +
                "commentId=" + commentId +
                ", commentUserName='" + commentUserName + '\'' +
                ", commentArticleId=" + commentArticleId +
                ", commentUserId='" + commentUserId + '\'' +
                ", commentContent='" + commentContent + '\'' +
                ", commentCreatetime='" + commentCreatetime + '\'' +
                '}';
    }
}
