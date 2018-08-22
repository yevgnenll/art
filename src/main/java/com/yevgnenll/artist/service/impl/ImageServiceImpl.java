package com.yevgnenll.artist.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.yevgnenll.artist.domain.Image;
import com.yevgnenll.artist.repository.ImageRepository;
import com.yevgnenll.artist.service.ImageService;

@Service
public class ImageServiceImpl implements ImageService {

  @Autowired
  private ImageRepository imageRepository;

  @Override
  public Image createImage(Image image) {
    return null;
  }

  @Override
  public Page<Image> imageList(Pageable pageable) {
    return null;
  }

  @Override
  public Image imageByTitle(String title) {
    return null;
  }

  @Override
  public void deleteImage(String title) {

  }
}
