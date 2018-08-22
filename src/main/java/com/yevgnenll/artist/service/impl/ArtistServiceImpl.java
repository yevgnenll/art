package com.yevgnenll.artist.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.yevgnenll.artist.domain.Artist;
import com.yevgnenll.artist.repository.ArtistRepository;
import com.yevgnenll.artist.service.ArtistService;

@Service
public class ArtistServiceImpl implements ArtistService {

  @Autowired
  private ArtistRepository artistRepository;

  @Override
  public Artist createArtist(Artist artist) {
    return artistRepository.save(artist);
  }

  @Override
  public Page<Artist> artistList(Pageable pageable) {
    return artistRepository.findAll(pageable);
  }

  @Override
  public Artist getArtist(String name) {
    return null;
  }

  @Override
  public void deleteArtist(Artist artist) {

  }
}
