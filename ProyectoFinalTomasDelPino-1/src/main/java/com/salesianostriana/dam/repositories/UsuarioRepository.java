package com.salesianostriana.dam.repositories;

import java.util.List;
import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.salesianostriana.dam.models.Oferta;
import com.salesianostriana.dam.models.Usuario;

public interface UsuarioRepository extends JpaRepository<Usuario, Long>{

	Optional<Usuario> findFirstByUsername(String username);
	
	 @Query("SELECT COUNT(o) FROM Oferta o WHERE o.remitente.id = :usuarioId")
    long contarOfertasPublicadas(@Param("usuarioId") long usuarioId);
	 
	 @Query("SELECT o FROM Oferta o WHERE o.remitente.id = :usuarioId")
	 List<Oferta> findOfertasPublicadas(@Param("usuarioId") long usuarioId);
}
