package com.BScamp.SpringMVCDemo.repository;

import java.util.List;
import java.util.Set;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

import com.BScamp.SpringMVCDemo.entity.Movie;

@EnableJpaRepositories
public interface MovieRepository extends JpaRepository<Movie, Integer>{	
	
	@Query(value = "select type from movie", nativeQuery = true)
	public Set<String> getType();
	public List<Movie> findByType(String type);

}
