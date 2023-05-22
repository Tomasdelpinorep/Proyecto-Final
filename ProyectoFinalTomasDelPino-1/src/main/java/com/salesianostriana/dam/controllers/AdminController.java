package com.salesianostriana.dam.controllers;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.salesianostriana.dam.models.Oferta;
import com.salesianostriana.dam.models.Usuario;
import com.salesianostriana.dam.services.CategoriaService;
import com.salesianostriana.dam.services.OfertaService;
import com.salesianostriana.dam.services.UsuarioService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private UsuarioService usuarioService;
	@Autowired
	private OfertaService ofertaService;
	@Autowired 
	private CategoriaService categoriaService;

	@GetMapping("/")
	public String mainForAdmins(Model model) {
		model.addAttribute("categories",categoriaService.findAll());
		return "mainForAdmins";
	}
	
	@GetMapping("/adminUsers")
	public String adminUsers(Model model) {
		List<Usuario> usuarios = usuarioService.findAll();
		for(Usuario u: usuarios) {
			usuarioService.setOfertasPublicadas(u);
		}
		
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
	
	//CRUD***************************************************************************************
	
	//USUARIOS*******************************************************************
	
	@GetMapping("/editUser/{id}")
	public String mostrarFormularioEdicion(@PathVariable long id, Model model) {
		Usuario aEditar = usuarioService.findById(id);
		if(aEditar != null) {
			model.addAttribute("usuario",aEditar);
			return "editUserForm";
		}else {
			return "redirect:/";
		}
	}
	
	@PostMapping("/editUser/submit")
	public String procesarFormularioEdicion(@ModelAttribute("usuario") Usuario u) {
		usuarioService.edit(u);
		return "redirect:/admin/adminUsers";
	}
	
	@GetMapping("/deleteUser/{id}")
	public String delete(@PathVariable long id) {
		usuarioService.deleteById(id);
		return "redirect:/admin/adminUsers";
	}
	
	@GetMapping("/newUser")
	public String mostrarFormulario(Model model) {
		model.addAttribute("usuario", new Usuario());
		return "newUserForm";
	}
	
	@PostMapping("/newUser/submit")
	public String procesarFormularioUsuario(@ModelAttribute("usuario") Usuario u) {
		usuarioService.save(u);
		return "redirect:/";
	}
	
	//OFERTAS*******************************************************************
	
	@GetMapping("/editOffer/{id}")
	public String mostrarFormularioEdicionOferta(@PathVariable long id, Model model) {
		Oferta aEditar = ofertaService.findById(id);
		if(aEditar != null) {
			model.addAttribute("oferta",aEditar);
			return "editOfferForm";
		}else {
			return "redirect:/";
		}
	}
	
	@PostMapping("/editOffer/submit")
	public String procesarFormularioEdicionOferta(@ModelAttribute("oferta") Oferta o) {
		ofertaService.edit(o);
		return "redirect:/";
	}
	
	@GetMapping("/deleteOffer/{id}")
	public String deleteOffer(@PathVariable long id) {
		ofertaService.deleteById(id);
		return "redirect:/";
	}
	
	@GetMapping("/newOffer")
	public String mostrarFormularioOferta(Model model) {
		model.addAttribute("oferta", new Oferta());
		return "newOfferForm";
	}
	
	@PostMapping("/newOffer/submit")
	public String procesarFormularioOferta(@ModelAttribute("oferta") Oferta o) {
		ofertaService.save(o);
		return "redirect:/";
	}
	
}
