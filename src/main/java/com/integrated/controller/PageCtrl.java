package com.integrated.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.integrated.entity.Test;

@Controller
@RequestMapping("")
public class PageCtrl {

	@RequestMapping("/")
	public String index() {
		return "index";
	}

	@RequestMapping("{path}")
	public String goPath(@PathVariable String path) {
		return path;
	}
}
