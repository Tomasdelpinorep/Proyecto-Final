package com.salesianostriana.dam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UsuarioController {

	@Autowired
	private UsuarioService service;
	
	@GetMapping("/adminUsuarios")
	public String listarUsuarios (Model model) {
		model.addAttribute("userList",service.getLista());
		
		return "adminUsers";
	}
}
