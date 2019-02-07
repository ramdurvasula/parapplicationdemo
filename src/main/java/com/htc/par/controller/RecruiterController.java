package com.htc.par.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class RecruiterController {
	@GetMapping(value="/recruiterForm")
	public String recruiterInfo() {
		return "recruiterForm";
	}
}
