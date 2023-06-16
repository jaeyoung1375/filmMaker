package com.jy.filmmaker.dto;

import java.sql.Date;

import lombok.Data;

@Data
public class ScheduleDto {
	private int scheduleNo;
	private int movieNo;
	private int theaterNo;
	private Date startTime;
	private Date endTime;
}
