package com.salesianostriana.dam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class OfertaController {

	@Autowired
	private OfertaService service;
	
	@GetMapping("/ofertas")
	public String listarOfetas (Model model) {
		model.addAttribute("listaOfetas",service.getLista());
		
		return "offerPage";
	}
}
