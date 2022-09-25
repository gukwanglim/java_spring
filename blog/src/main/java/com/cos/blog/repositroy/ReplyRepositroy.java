package com.cos.blog.repositroy;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cos.blog.model.Reply;

public interface ReplyRepositroy extends JpaRepository<Reply, Integer> {

}
