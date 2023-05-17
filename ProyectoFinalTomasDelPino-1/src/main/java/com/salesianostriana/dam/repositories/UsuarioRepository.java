package com.salesianostriana.dam.repositories;

import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.salesianostriana.dam.models.Usuario;

public interface UsuarioRepository extends JpaRepository<Usuario, Long>{

	Optional<Usuario> findFirstByUsername(String username);
	
	 @Query("SELECT COUNT(*) FROM Oferta o WHERE o.remitente.id = :usuarioId")
    int num_ofertas(@Param("usuarioId") long usuarioId);
}
