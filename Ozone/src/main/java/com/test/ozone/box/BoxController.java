package com.test.ozone.box;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BoxController {
	
	@GetMapping("/box")
	public String box() {
		
		return "box.box";
	}
	
	@GetMapping("/boxadd")
	public String boxadd() {
		
		return "box.boxadd";
	}
	
	@GetMapping("/sharebox")
	public String sharebox() {
		
		return "box.sharebox";
	}
	
	@GetMapping("/view")
	public String view() {
		
		return "box.view";
	}
	
	@GetMapping("/viewshare")
	public String viewshare() {
		
		return "box.viewshare";
	}
	
	@GetMapping("/add")
	public String add() {
		
		return "box.add";
	}
	
	@GetMapping("/documentbox")
	public String documentbox() {
		
		return "box.documentbox";
	}
	
	@GetMapping("/imagebox")
	public String imagebox() {
		
		return "box.imagebox";
	}
	
	@GetMapping("/sharecheck")
	public String sharecheck() {
		
		return "box.sharecheck";
	}
	
	@GetMapping("/unsharecheck")
	public String unsharecheck() {
		
		return "box.unsharecheck";
	}
	
	@GetMapping("/del")
	public String del() {
		
		return "box.del";
	}
	
	

}