package com.test.ozone.file;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Controller
public class FileController {

	@Autowired
	private BoardDAO dao;
	
	@Autowired 
	private ServletContext context;
	
	@RequestMapping(value = "/file/add", method = { RequestMethod.GET })
	public String add(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {

		

		return "file.add";
	}
	
	@RequestMapping(value = "/file/addok", method = { RequestMethod.POST })
	public void addok(HttpServletRequest req, HttpServletResponse resp, HttpSession session, BoardDTO dto) {

		//enctype="multipart/form-data" > MultipartHttpServletRequest
		
		//첨부파일 처리
		MultipartHttpServletRequest multi = (MultipartHttpServletRequest)req;
		
		
		//<input type="file" name="attach">
		MultipartFile attach = multi.getFile("attach"); //첨부 파일 참조 객체
		
		System.out.println(attach.getOriginalFilename()); //첨부파일명
		System.out.println(attach.getSize()); //첨부파일 크기(바이트)
		System.out.println(attach.getContentType()); //첨부파일 형식
		
		//첨부 파일 > 일단 임시 폴더에 저장 > 우리가 원하는 폴더로 파일을 이동!!!

		//webapp > resources > file :  업로드 폴더
		
		String filename = attach.getOriginalFilename(); //ofilename
		dto.setOfilename(filename);
		
		filename = getFileName(req.getRealPath("resources/file"), filename); //filename
		dto.setFilename(filename);
		
		System.out.println(req.getRealPath("resources/file"));
		
		File file = new File(req.getRealPath("resources/file") + "\\" + filename); //희망 경로
		
		try {
			
			//임시 폴더에 있는 첨부파일을 우리가 희망하는 곳으로 이동
			attach.transferTo(file);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		//게시판 글쓰기
		int result = dao.add(dto);
		
		try {
			resp.sendRedirect("/ozone/file/list");
		} catch (IOException e) {
			e.printStackTrace();
		}	
		

	}
	
	private String getFileName(String path, String filename) {

		//path = "/resources/file"
		//filename = "면접.zip" > "면접_1.zip" > "면접_2.zip"
		
		int n = 1;
		int index = filename.lastIndexOf(".");
		String tempName = filename.substring(0, index); //"면접"
		String tempExt = filename.substring(index); //".zip"
		
		//중복 검사
		while (true) {
			
			File file = new File(path + "\\" + filename); //"/resources/file/면접.zip"
			
			if (file.exists()) {
				//넘버링
				filename = tempName + "_" + n + tempExt; //"면접_1.zip"
				n++;
			} else {
				return filename;
			}			
		}
		
	}

	@RequestMapping(value = "/file/list", method = { RequestMethod.GET })
	public String list(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {

		List<BoardDTO> list = dao.list();
		
		req.setAttribute("list", list);

		return "file.list";
	}
	
	
	@RequestMapping(value = "/file/rlist", method = { RequestMethod.GET })
	public String rlist(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {

		List<BoardDTO> rlist = dao.rlist();
		
		req.setAttribute("rlist", rlist);

		return "file.rlist";
	}
	
	
	@RequestMapping(value = "/file/download", method = { RequestMethod.GET })
	public void download(HttpServletRequest req, HttpServletResponse resp, HttpSession session) throws Exception {

		String fileName = req.getParameter("filename");
		String orgfileName = req.getParameter("orgfilename");

		String savePath = "resources/file"; 
		
		String sDownloadPath = context.getRealPath(savePath);


		String sFilePath = sDownloadPath + "/" + fileName;
		byte b[] = new byte[4096];
		FileInputStream in = new FileInputStream(sFilePath);
		String sMimeType = context.getMimeType(sFilePath);
		System.out.println("sMimeType>>>" + sMimeType);

		if (sMimeType == null)
			sMimeType = "application/octet-stream";
			//text/html
			//image/gif
			//application/zip

		resp.setContentType(sMimeType);
		String agent = req.getHeader("User-Agent");
		boolean ieBrowser = (agent.indexOf("MSIE") > -1) || (agent.indexOf("Trident") > -1);

		if (ieBrowser) {
			fileName = URLEncoder.encode(fileName, "UTF-8").replaceAll("/+", "%20");
		} else {
			fileName = new String(fileName.getBytes("UTF-8"), "iso-8859-1");
		}

		orgfileName = new String(orgfileName.getBytes("UTF-8"), "ISO-8859-1");
		
		resp.setHeader("Content-Disposition", "attachment; filename= " + orgfileName);

		ServletOutputStream out2 = resp.getOutputStream();
		int numRead;

		while ((numRead = in.read(b, 0, b.length)) != -1) {
			out2.write(b, 0, numRead);
		}
		out2.flush();
		out2.close();
		in.close();
		
		
	}
	
	
	
	@RequestMapping(value = "/file/madd.do", method = { RequestMethod.GET })
	public String madd(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {

		

		return "file.madd";
	}
	
	
	@RequestMapping(value = "/file/maddok.do", method = { RequestMethod.POST })
	public void maddok(HttpServletRequest req, HttpServletResponse resp, HttpSession session, MBoardDTO dto) {
		
		MultipartHttpServletRequest multi = (MultipartHttpServletRequest)req;
		
		//첨부파일 1개
		//MultipartFile attach1 = multi.getFile("attach1");
		
		//첨부파일 N개
		Iterator<String> iter = multi.getFileNames();
		
		List<FileDTO> flist = new ArrayList<FileDTO>();
		
		while (iter.hasNext()) {
			
			String item = iter.next(); //첨부 파일 태그명		
			//System.out.println(item);
			
			MultipartFile attach = multi.getFile(item);
			//System.out.println(attach.getOriginalFilename()); //첨부 파일명
			
			FileDTO fdto = new FileDTO();
			
			String filename = attach.getOriginalFilename();
			fdto.setOrgfilename(filename);
			
			filename = getFileName(req.getRealPath("/resources/file"), filename);
			fdto.setFilename(filename);
			
			flist.add(fdto);
			
			File file = new File(req.getRealPath("/resources/file") + "\\" + filename);
			
			try {
				attach.transferTo(file);
			} catch (Exception e) {
				e.printStackTrace();
			}
			 
		}
		
		System.out.println(req.getRealPath("/resources/file"));
		
		
		//DB 작업
		
		//게시물 등록
		int result = dao.madd(dto); 
		
		String bseq = dao.getSeq();
		
		//첨부파일 등록
		for (FileDTO fdto : flist) {
			
			fdto.setBseq(bseq);
			result = dao.maddFile(fdto);
		}
		
		
		try {
			resp.sendRedirect("/file/list.do");
		} catch (IOException e) {
			e.printStackTrace();
		}	
		
	}
	
	
	//Mapped Statements collection already contains value for file.list
	
	@RequestMapping(value = "/file/mlist.do", method = { RequestMethod.GET })
	public String mlist(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {

		List<MBoardDTO> list = dao.mlist();
		
		for (MBoardDTO dto : list) {
			
			List<FileDTO> flist = dao.getFileList(dto.getSeq());
			dto.setFlist(flist);
			
		}
		
		req.setAttribute("list", list);

		return "file.mlist";
	}
	
	
}



















