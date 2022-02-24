package com.test.file;

import java.util.List;

import lombok.Data;

@Data
public class MBoardDTO {
	
	private String seq;
	private String subject;
	private String name;
	private String regdate;
	
	private List<FileDTO> flist;

}
