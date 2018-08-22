package com.yevgnenll.artist.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.yevgnenll.artist.domain.Artist;

@Repository
public interface ArtistRepository extends JpaRepository<Artist, Long>{

  Artist findByName(String name);
}
