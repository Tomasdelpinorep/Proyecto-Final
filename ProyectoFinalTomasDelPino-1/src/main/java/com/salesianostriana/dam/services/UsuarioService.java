package com.salesianostriana.dam.services;


import org.springframework.stereotype.Service;

import com.salesianostriana.dam.baseServices.BaseService;
import com.salesianostriana.dam.models.Usuario;
import com.salesianostriana.dam.repositories.UsuarioRepository;

@Service
public class UsuarioService extends BaseService<Usuario, Long, UsuarioRepository>{


	public UsuarioService(UsuarioRepository repo) {
		super(repo);
	}

}
