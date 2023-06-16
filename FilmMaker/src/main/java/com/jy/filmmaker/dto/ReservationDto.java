package com.jy.filmmaker.dto;

import java.sql.Date;

import lombok.Data;

@Data
public class ReservationDto {
	private int reservationNo;
	private int scheduleNo;
	private long memberNo;
	private int movieNo;
	private int seatId;
	private int reservationCount;
	private Date reservationDate;
}
