package com.jy.filmmaker.dto;

import java.sql.Date;

import lombok.Data;

@Data
public class MovieDto {
	private int movieNo;
	private String movieTitle;
	private String movieDirector;
	private String movieGenre;
	private String movieDescription;
	private String movieDuration;
	private Date movieCreated;
	private int movieAge;
}
