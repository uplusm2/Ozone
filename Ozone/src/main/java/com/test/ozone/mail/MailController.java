package com.test.ozone.mail;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class MailController {

	@Autowired
	private MailService service;
	
	@GetMapping("/mail/inmail")
	public String inmail(Model model) {
		
		ArrayList<MailDTO> list = service.list();
		
		model.addAttribute("list", list);
		
		return "mail.inmail";
	}
	
	@GetMapping("/mail/sendmail")
	public String sendmail() {
		
		return "mail.sendmail";
	}
	
	@GetMapping("/mail/outmail")
	public String outmail() {
		
		return "mail.outmail";
	}
	
	@PostMapping("/mail/sendMail")
	public String sendMail() {
		
		return "redirect:/mail/inmail";
	}
	
	@GetMapping("/mail/viewmail")
	public String viewmail() {
		
		return "mail.viewmail";
	}
}
