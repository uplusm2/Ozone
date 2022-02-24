package com.test.ozone.mail;

import lombok.Data;

@Data
public class MailDTO {

	private String seq;
	private String id;
	private String name; //***
	private String subject;
	private String content;
	private String regdate;
	private String orgfilename;
	private String filename;
	
}
