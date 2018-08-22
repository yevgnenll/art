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
    return imageRepository.save(image);
  }

  @Override
  public Page<Image> imageList(Pageable pageable) {
    return imageRepository.findAll(pageable);
  }

  @Override
  public Image imageByTitle(String title) {
    return imageRepository.findByTitle(title);
  }

  @Override
  public Image imageById(long id) {
    return imageRepository.findById(id);
  }

  @Override
  public void deleteImage(long id) {
    Image image = imageById(id);
    imageRepository.delete(image);
  }
}
