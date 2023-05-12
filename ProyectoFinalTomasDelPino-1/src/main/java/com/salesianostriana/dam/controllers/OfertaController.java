package com.salesianostriana.dam.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.salesianostriana.dam.services.OfertaService;

@Controller
public class OfertaController {

	@Autowired
	private OfertaService service;
	
	@GetMapping("/adminOffers")
	public String listarOfertas (Model model) {
		model.addAttribute("listaOfertas",service.findAll());
		
		return "adminOffers";
	}
}
