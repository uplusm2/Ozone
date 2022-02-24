package com.test.ozone.project;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ProjectController {
	
	@GetMapping("/ozone")
	public String main() {
		
		return "project.main";
	}
	
	@GetMapping("/project/column")
	public String column() {
		
		return "project.column";
	}
	
	@GetMapping("/project/board")
	public String board() {
		
		return "project.board";
	}
	
	@GetMapping("/project/detail")
	public String detail() {
		
		return "project.detail";
	}
	
	@GetMapping("/project/newDetail")
	public String newDetail() {
		
		return "project.newDetail";
	}

}
