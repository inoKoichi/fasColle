package com.app.fscolle.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.app.fscolle.entity.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {}