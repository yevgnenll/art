package com.yevgnenll.artist.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.yevgnenll.artist.domain.Image;

@Repository
public interface ImageRepository extends JpaRepository<Image, Long>{

  Image findByTitle(String title);
  Image findById(long id);

}
