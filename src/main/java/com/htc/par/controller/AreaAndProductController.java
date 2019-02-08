package com.htc.par.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AreaAndProductController {
	@GetMapping(value="/areaAndProductForm")
	public String areaAndProductInfo() {
		return "areaAndProductForm";
	}
}
