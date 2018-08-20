package com.yevgnenll.artist.domain;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;

import org.springframework.data.annotation.Id;

import lombok.Data;

@Data
public class Artist {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private long id;

  @Column(length = 45, nullable = false)
  private String name;

  private Date birthYear;

  private Date deathYear;

  @Column(length = 45)
  private String country;

  @Column(length = 45)
  private String genre;

}
