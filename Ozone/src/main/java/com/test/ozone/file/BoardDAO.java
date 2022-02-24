package com.test.ozone.file;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAO {

	@Autowired
	private SqlSessionTemplate template;

	public int add(BoardDTO dto) {
		
		return template.insert("file.add", dto);
	}

	public List<BoardDTO> list() {

		return template.selectList("file.list");
	}
	
	public List<BoardDTO> rlist() {

		return template.selectList("file.rlist");
	}

	
	
}







