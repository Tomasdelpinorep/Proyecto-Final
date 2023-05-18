package com.salesianostriana.dam.services;


import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.salesianostriana.dam.baseServices.BaseService;
import com.salesianostriana.dam.models.Usuario;
import com.salesianostriana.dam.repositories.UsuarioRepository;

@Service
public class UsuarioService extends BaseService<Usuario, Long, UsuarioRepository>{

	@Autowired
	private UsuarioRepository usuarioRepository;

	public UsuarioService(UsuarioRepository repo) {
		super(repo);
	}
	
	@PostConstruct
	public void contarOfertas() {
        List<Usuario> usuarios = usuarioRepository.findAll();
        for (Usuario u : usuarios) {
            long num_ofertas = usuarioRepository.num_ofertas(u.getId());
            u.setNum_ofertas(num_ofertas);
            usuarioRepository.save(u);
        }
    }

}
