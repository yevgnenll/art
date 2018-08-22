package com.yevgnenll.artist.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.yevgnenll.artist.domain.Image;

public interface ImageService {

  Image createImage(Image image);
  Page<Image> imageList(Pageable pageable);
  Image imageByTitle(String title);
  Image imageById(long id);
  void deleteImage(long id);

}
