package com.test.ozone.mail;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
	
	@PostMapping("/mail/sendok")
	public String sendok() {
		
		return "mail.sendok";
	}
	
	@GetMapping("/mail/viewmail")
	public String viewmail(HttpServletRequest req, HttpSession session, HttpServletResponse resp, String seq, Model model) {
		
		String id = req.getParameter("id");
		
		model.addAttribute("id", id);
		req.setAttribute("id", id);
		
		return "mail.viewmail";
	}
}
