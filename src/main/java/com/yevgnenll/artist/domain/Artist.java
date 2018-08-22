package com.yevgnenll.artist.domain;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.Data;

@Data
@Table(name = "artists")
@Entity
public class Artist {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private long id;

  @Column(length = 45, nullable = false)
  private String name;

  private String birthYear;

  private String deathYear;

  @Column(length = 45)
  private String country;

  @Column(length = 45)
  private String genre;

  @OneToMany(fetch = FetchType.LAZY, mappedBy = "artist")
  private List<Image> images;

}
