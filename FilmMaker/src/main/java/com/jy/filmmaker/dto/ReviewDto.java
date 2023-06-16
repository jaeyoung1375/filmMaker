package com.jy.filmmaker.dto;

import java.sql.Date;

import lombok.Data;

@Data
public class ReviewDto {
	private int reviewNo;
	private int movieNo;
	private long memberNo;
	private String reviewContent;
	private int reviewLike;
	private int reviewScore;
	private Date reviewDate;
}
