package com.salesianostriana.dam.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.salesianostriana.dam.services.OfertaService;
import com.salesianostriana.dam.services.UsuarioService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private UsuarioService usuarioService;
	@Autowired
	private OfertaService ofertaService;

	@GetMapping("/")
	public String mainForAdmins() {
		return "mainForAdmins";
	}
	
	@GetMapping("/adminUsers")
	public String adminUsers(Model model) {
		model.addAttribute("listaUsuarios",usuarioService.findAll());
		return "adminUsers";
	}
	
	@GetMapping("/adminOffers")
	public String adminOffers(Model model) {
		model.addAttribute("listaOfertas",ofertaService.findAll());
		return "adminOffers";
	}
	
	@GetMapping("/adminBarters")
	public String adminBarters() {
		return "adminBarters";
	}
}
