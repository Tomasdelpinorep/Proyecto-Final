package com.salesianostriana.dam.services;

import org.springframework.stereotype.Service;

import com.salesianostriana.dam.baseServices.BaseService;
import com.salesianostriana.dam.models.Oferta;
import com.salesianostriana.dam.repositories.OfertaRepository;

@Service
public class OfertaService extends BaseService<Oferta, Long, OfertaRepository>{

	public OfertaService(OfertaRepository repo) {
		super(repo);
	}

	 
}
