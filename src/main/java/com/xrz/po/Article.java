package com.xrz.po;

public class Article {
    private Integer articleId;
    private String articleTitle;
    private String articleDescribe;
    private String articleContent;
    private String articleTag;
    private String articleAuthor;
    private String articleCreatetime;
    private String articleAuthorId;

    public String getArticleAuthorId() {
        return articleAuthorId;
    }

    public void setArticleAuthorId(String articleAuthorId) {
        this.articleAuthorId = articleAuthorId;
    }

    public Integer getArticleId() {
        return articleId;
    }

    public void setArticleId(Integer articleId) {
        this.articleId = articleId;
    }

    public String getArticleContent() {
        return articleContent;
    }

    public void setArticleContent(String articleContent) {
        this.articleContent = articleContent;
    }

    public String getArticleTitle() {
        return articleTitle;
    }

    public void setArticleTitle(String articleTitle) {
        this.articleTitle = articleTitle;
    }

    public String getArticleDescribe() {
        return articleDescribe;
    }

    public void setArticleDescribe(String articleDescribe) {
        this.articleDescribe = articleDescribe;
    }

    public String getArticleTag() {
        return articleTag;
    }

    public void setArticleTag(String articleTag) {
        this.articleTag = articleTag;
    }

    public String getArticleAuthor() {
        return articleAuthor;
    }

    public void setArticleAuthor(String articleAuthor) {
        this.articleAuthor = articleAuthor;
    }

    public String getArticleCreatetime() {
        return articleCreatetime;
    }

    public void setArticleCreatetime(String articleCreatetime) {
        this.articleCreatetime = articleCreatetime;
    }

    @Override
    public String toString() {
        return "Article{" +
                "articleId=" + articleId +
                ", articleTitle='" + articleTitle + '\'' +
                ", articleDescribe='" + articleDescribe + '\'' +
                ", articleContent='" + articleContent + '\'' +
                ", articleTag='" + articleTag + '\'' +
                ", articleAuthor='" + articleAuthor + '\'' +
                ", articleCreatetime='" + articleCreatetime + '\'' +
                ", articleAuthorId='" + articleAuthorId + '\'' +
                '}';
    }
}
