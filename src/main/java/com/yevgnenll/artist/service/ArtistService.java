package com.yevgnenll.artist.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.yevgnenll.artist.domain.Artist;

public interface ArtistService {

  Artist createArtist(Artist artist);
  Page<Artist> artistList(Pageable pageable);
  Artist getArtist(String name);
  void deleteArtist(Artist artist);

}
