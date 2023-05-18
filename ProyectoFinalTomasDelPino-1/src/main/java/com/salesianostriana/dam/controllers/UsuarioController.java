package com.salesianostriana.dam.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.salesianostriana.dam.services.CategoriaService;


@Controller
@RequestMapping("/user")
public class UsuarioController {

	@Autowired 
	private CategoriaService categoriaService;
	
	@GetMapping("/")
	public String mainForUsers (Model model) {
		model.addAttribute("categories",categoriaService.findAll());
		return "mainForUsers";
	}
}
