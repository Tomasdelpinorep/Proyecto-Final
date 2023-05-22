package com.salesianostriana.dam.controllers;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.salesianostriana.dam.models.Intercambio;
import com.salesianostriana.dam.models.Oferta;
import com.salesianostriana.dam.models.Usuario;
import com.salesianostriana.dam.repositories.IntercambioRepository;
import com.salesianostriana.dam.repositories.OfertaRepository;
import com.salesianostriana.dam.services.CategoriaService;
import com.salesianostriana.dam.services.IntercambioService;
import com.salesianostriana.dam.services.OfertaService;
import com.salesianostriana.dam.services.UsuarioService;

@Controller
@RequestMapping("/user")
public class UsuarioController {

	@Autowired
	private IntercambioService intercambioService;

	@Autowired
	private IntercambioRepository intercambioRepository;
	
	@Autowired
	private OfertaService ofertaService;

	@Autowired
	private OfertaRepository ofertaRepository;

	@Autowired
	private UsuarioService usuarioService;

	@Autowired
	private CategoriaService categoriaService;

	@GetMapping("/")
	public String mainForUsers(Model model) {
		model.addAttribute("categories", categoriaService.findAll());
		return "mainForUsers";
	}

	@GetMapping("/uploadOffer")
	public String uploadOfferPage() {
		return "uploadOffer";
	}

	@GetMapping("/barterPannel")
	public String barterPannel(Model model) {

		// Consigo el objeto Usuario
		String username = SecurityContextHolder.getContext().getAuthentication().getName();
		Optional<Usuario> optional = usuarioService.findByUsername(username);
		Usuario usuarioLogeado = optional.orElse(null);

		model.addAttribute("intercambiosHasPropuesto", intercambioService.findIWantToBarter(usuarioLogeado.getId()));
		model.addAttribute("intercambiosHanPropuesto", intercambioService.findTheyWantToBarter(usuarioLogeado.getId()));

		return "barterPannel";
	}

	@PostMapping("/barterAction")
	public String barterAction(@RequestParam("oferta1Id") long oferta1Id, @RequestParam("oferta2Id") long oferta2Id,
			@RequestParam("barterId") long barterId, @RequestParam("accion") String accion) {

		Oferta o1 = ofertaService.findById(oferta1Id);
		Oferta o2 = ofertaService.findById(oferta2Id);
		Intercambio i = intercambioService.findById(barterId);

		if (accion.equalsIgnoreCase("Aceptado")) {
			o1.setIntercambiado(true);
			o2.setIntercambiado(true);
			ofertaRepository.save(o1);
			ofertaRepository.save(o2);
		}
		
		i.setEstado(accion);
		intercambioRepository.save(i);

		return "redirect:/user/barterPannel";
	}
}
