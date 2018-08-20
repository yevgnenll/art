package com.yevgnenll.artist.domain;

import java.net.URL;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;

import org.springframework.data.annotation.Id;

import lombok.Data;

@Data
public class Image {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private long id;

  private URL imageUrl;

  private String title;

  private long artistId;

  private String description;

}
