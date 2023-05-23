package com.salesianostriana.dam.controllers;

import java.time.LocalDate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.salesianostriana.dam.services.CategoriaService;
import com.salesianostriana.dam.models.Usuario;
import com.salesianostriana.dam.repositories.UsuarioRepository;

@Controller
public class MainController {
	
	@Autowired
	UsuarioRepository usuarioRepository;
	
	@Autowired
	private CategoriaService categoriaService;
	
	@GetMapping({"/","/main"})
	public String mainPage(Model model){
		model.addAttribute("categories",categoriaService.findAll());
		return "main";
	}
	
	@GetMapping("/fail")
	public String fail(){
		return "fail";
	}
	
	@GetMapping("/register")
	public String register() {
		return "newUserForm";
	}
	
	@PostMapping("/newUserRegistered")
	public String newUser(@RequestParam("name")String nombre,
			@RequestParam("surname")String apellidos,
			@RequestParam("username")String username,
			@RequestParam("email")String email,
			@RequestParam("password")String password){
		
		if(nombre == "" || apellidos == "" || username == "" || email == "" || password == "") {
			return "fail";
		}else {
			Usuario u = new Usuario();
			u.setNombre(nombre);
			u.setApellidos(apellidos);
			u.setUsername(username);
			u.setPassword(password);
			u.setEmail(email);
			u.setFecha_alta(LocalDate.now());
			usuarioRepository.save(u);
			
			return "redirect:/";
		}
	}
}

