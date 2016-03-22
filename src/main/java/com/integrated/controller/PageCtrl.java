package com.integrated.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageCtrl {

	@RequestMapping("{path}")
	public String goPath(@PathVariable String path) {
		System.out.println();
		return path;
	}
}
