package com.salesianostriana.dam.services;

import org.springframework.stereotype.Service;

import com.salesianostriana.dam.baseServices.BaseService;
import com.salesianostriana.dam.models.Categoria;
import com.salesianostriana.dam.repositories.CategoriaRepository;

@Service
public class CategoriaService extends BaseService<Categoria, Long, CategoriaRepository>{

	public CategoriaService(CategoriaRepository repo) {
		super(repo);
		// TODO Auto-generated constructor stub
	}

}
