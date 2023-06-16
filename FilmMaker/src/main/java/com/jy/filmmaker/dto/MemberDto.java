package com.jy.filmmaker.dto;

import java.sql.Date;

import lombok.Data;

@Data
public class MemberDto {
	private long memberNo;
	private String memberName;
	private String memberEmail;
	private String memberPassword;
	private String memberTel;
	private Date memberBirth;
	private String memberType;

}
