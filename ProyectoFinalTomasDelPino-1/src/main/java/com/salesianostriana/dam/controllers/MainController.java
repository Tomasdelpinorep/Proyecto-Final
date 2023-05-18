package com.salesianostriana.dam.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.salesianostriana.dam.services.CategoriaService;

@Controller
public class MainController {
	
	@Autowired
	private CategoriaService categoriaService;
	
	@GetMapping({"/","/main"})
	public String mainPage(Model model){
		model.addAttribute("categories",categoriaService.findAll());
		return "main";
	}
	
	@GetMapping("/fail")
	public String fail(Model model){
		return "fail";
	}
}

