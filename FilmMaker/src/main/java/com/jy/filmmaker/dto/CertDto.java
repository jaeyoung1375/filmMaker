package com.jy.filmmaker.dto;

import java.sql.Date;

import lombok.Data;

@Data
public class CertDto {
	private String memberEmail;
	private String secret;
	private Date limt;
}
