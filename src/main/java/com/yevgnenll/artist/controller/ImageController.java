package com.yevgnenll.artist.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.yevgnenll.artist.domain.Image;
import com.yevgnenll.artist.service.ImageService;

@RestController
@RequestMapping(path = "/images")
public class ImageController {

  @Autowired
  private ImageService imageService;

  @GetMapping(path = {"/", ""})
  public Page<Image> imageList(Pageable pageable) {
    return imageService.imageList(pageable);
  }

  @GetMapping(path = {"/{title}", "/{title}/"})
  public Image getImageByTitle(@PathVariable String title) {
    return imageService.imageByTitle(title);
  }

  @GetMapping(path = {"/{id}", "/{id}/"})
  public Image getImageById(@PathVariable long id) {
    return imageService.imageById(id);
  }

  @PostMapping(path = {"", "/"})
  public Image create(@RequestBody Image image) {
    return imageService.createImage(image);
  }

  @DeleteMapping(path = {"/{id}"})
  public void delete(@PathVariable long id) {

  }
}
