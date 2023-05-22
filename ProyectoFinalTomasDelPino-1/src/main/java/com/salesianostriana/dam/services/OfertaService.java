package com.salesianostriana.dam.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.salesianostriana.dam.baseServices.BaseService;
import com.salesianostriana.dam.models.Oferta;
import com.salesianostriana.dam.repositories.OfertaRepository;

@Service
public class OfertaService extends BaseService<Oferta, Long, OfertaRepository>{

	@Autowired
	private OfertaRepository ofertaRepository;
	
	public OfertaService(OfertaRepository repo) {
		super(repo);
	}
	
	public List<Oferta> getOffersByCategoryId(long categoryId){
		return ofertaRepository.findByCategoryId(categoryId);
	}

	 
}
