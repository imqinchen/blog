package com.qinchen.service;

import com.qinchen.pojo.Blog;

import java.util.List;
import java.util.Map;

public interface BlogService {
    public List<Blog> getAllBlog();
    public void saveBlog(Blog blog);
    public Blog getBlogById(Long id);
    public void deleteBlog(Long id);
    public void updateBlog(Blog blog);
    public List<Blog> searchBlog(Blog blog);





}
