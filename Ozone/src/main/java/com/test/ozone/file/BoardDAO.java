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

	public int madd(MBoardDTO dto) {
		
		return template.insert("file.madd", dto);
	}

	public String getSeq() {
		
		return template.selectOne("file.getseq");
	}

	public int maddFile(FileDTO fdto) {
		
		return template.insert("file.maddfile", fdto);
	}

	public List<MBoardDTO> mlist() {
		
		return template.selectList("file.mlist");
	}

	public List<FileDTO> getFileList(String seq) {
		
		return template.selectList("file.mfilelist", seq);
	}
	
}























