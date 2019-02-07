package com.htc.par.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PreScreenerController {
	@GetMapping(value="/preScreenerForm")
	public String preScreenerInfo() {
		return "preScreenerForm";
	}
}
