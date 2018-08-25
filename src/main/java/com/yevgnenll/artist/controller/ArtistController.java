package com.yevgnenll.artist.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.yevgnenll.artist.domain.Artist;
import com.yevgnenll.artist.service.ArtistService;

@RestController
@RequestMapping(path = "/artists")
public class ArtistController {

  @Autowired
  private ArtistService artistService;

  @Cacheable(cacheNames = "artists")
  @GetMapping(path = "/")
  public Page<Artist> artistList(Pageable pageable) {
    return artistService.artistList(pageable);
  }

  @Cacheable(cacheNames = "artistInfo")
  @GetMapping(path = {"/{name}/", "/{name}"})
  public Artist artistByName(@PathVariable String name) {
    return artistService.getArtist(name);
  }

  @PostMapping(path = "/")
  public Artist create(@RequestBody Artist artist) {
    return artistService.createArtist(artist);
  }

  @DeleteMapping(path = {"/{name}/", "/{name}"})
  public void delete(@PathVariable String name) {
    artistService.deleteArtist(name);
  }

}
