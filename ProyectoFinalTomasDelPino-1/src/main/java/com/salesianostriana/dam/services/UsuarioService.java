package com.salesianostriana.dam.services;


import java.util.Optional;


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
	
	public void setOfertasPublicadas(Usuario u) {
            long num_ofertas = usuarioRepository.contarOfertasPublicadas(u.getId());
            u.setNum_ofertas(num_ofertas);
            usuarioRepository.save(u);
    }
	
	public Optional<Usuario> findByUsername(String username) {
		return usuarioRepository.findFirstByUsername(username);
	}

}
