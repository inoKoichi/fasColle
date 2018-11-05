package com.app.fscolle.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.app.fscolle.entity.Sample;

@Repository
public interface SampleRepository extends JpaRepository<Sample, Long> {}