package com.salesianostriana.dam.controllers;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.salesianostriana.dam.models.Categoria;
import com.salesianostriana.dam.models.Oferta;
import com.salesianostriana.dam.models.Usuario;
import com.salesianostriana.dam.repositories.OfertaRepository;
import com.salesianostriana.dam.services.CategoriaService;
import com.salesianostriana.dam.services.OfertaService;
import com.salesianostriana.dam.services.UsuarioService;

@Controller @RequestMapping("/offers")
public class OfertaController {

	@Autowired
	private UsuarioService usuarioService;
	
	@Autowired
	private OfertaService service;
	
	@Autowired
	OfertaRepository ofertaRepository;
	
	@Autowired
	CategoriaService categoriaService;
	
	
	@GetMapping("/{categoryId}")
	public String mostrarOfertasCoches(@PathVariable long categoryId,Model model) {
		String username = SecurityContextHolder.getContext().getAuthentication().getName();
		Optional<Usuario> optional = usuarioService.findByUsername(username);
		Usuario usuarioLogeado = optional.orElse(null);
		
		if(usuarioLogeado != null) {
			model.addAttribute("ofertasPublicadas",usuarioLogeado.getOfertasPublicadas());
		}
		
		model.addAttribute("offerListById", service.getOffersByCategoryId(categoryId));
		return "offerPage";
	}
	
	@PostMapping("/successPage")
	public String successPage(@RequestParam("selectedOffer") long idOferta, @RequestParam("redirectId") long id) {
		
		//Consigo la oferta que se ha seleccionado para intercambiar
		Oferta o = service.findById(idOferta);
		
		//Añado la oferta a ofertas pendientes
		o.setPendiente(true);
		ofertaRepository.save(o);
		
		return "redirect:/offers/" + id;
	}
	
	@PostMapping("/offerUploaded")
	public String offerUploaded(@RequestParam("nombre") String nombre,
			@RequestParam("product-description") String descripcion,
			@RequestParam("categoria") long categoriaId,
			 @RequestParam("km") int km,
			 @RequestParam("kmMotos") int kmMotos,
			 @RequestParam("puertas") short numPuertas,
			 @RequestParam("consumo") double consumo,
			 @RequestParam("talla")  String talla,
			 @RequestParam("m2") double m2,
			 @RequestParam("banos") short num_banos,
			 @RequestParam("habitaciones") short num_habitaciones,
			 @RequestParam("direccion") String direccion,
			 @RequestParam("tipo_bici") String tipo_bici,
			 @RequestParam("num_marchas") short num_marchas,
			 @RequestParam("tiempo") short duracion,
			 @RequestParam("calificacion") String titulacion,
			 @RequestParam("userId") long userId){
		
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		
		//Consigo la categoría y al usuario por su ID
		Categoria cat = categoriaService.findById(categoriaId);
		Usuario remitente = usuarioService.findById(userId);
		
		
		Oferta o = new Oferta();
		o.setNombre(nombre);
		o.setDescripcion(descripcion);
		o.setCat(cat);
		o.setKm(km);
		o.setNumPuertas(numPuertas);
		o.setConsumo(consumo);
		o.setTalla(talla);
		o.setM2(m2);
		o.setNumBanos(num_banos);
		o.setNumHabitaciones(num_habitaciones);
		o.setDireccion(direccion);
		o.setTipoBici(tipo_bici);
		o.setNumMarchas(num_marchas);
		o.setDuracion(duracion);
		o.setTitulacion(titulacion);
		o.setRemitente(remitente);
		
		ofertaRepository.save(o);
		
		 if (authentication != null && authentication.getAuthorities().stream()
	                .anyMatch(authority -> authority.getAuthority().equals("ROLE_ADMIN"))) {
	            return "redirect:/admin/";
	        } else {
	            return "redirect:/user/";
	        }
	}
}
