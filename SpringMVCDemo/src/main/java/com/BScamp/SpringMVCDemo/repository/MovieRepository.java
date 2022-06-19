package com.BScamp.SpringMVCDemo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.BScamp.SpringMVCDemo.entity.Movie;

public interface MovieRepository extends JpaRepository<Movie, Integer>{

}
