package com.test.ozone.mail;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MailController {

	@GetMapping("/mail/inmail")
	public String list(HttpServletRequest req, HttpSession session, Model model) {
		
		return "mail.inmail";
	}
}
