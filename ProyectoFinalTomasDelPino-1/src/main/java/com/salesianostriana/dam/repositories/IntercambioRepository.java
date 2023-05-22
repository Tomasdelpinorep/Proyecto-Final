package com.salesianostriana.dam.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.salesianostriana.dam.models.Intercambio;

public interface IntercambioRepository extends JpaRepository<Intercambio, Long>{

	@Query("SELECT o FROM Intercambio o WHERE :loggedUserId = o.interesado.id")
	List<Intercambio> findIWantToBarter(@Param("loggedUserId")long loggedUserId);
	
	@Query("SELECT o FROM Intercambio o WHERE :loggedUserId = o.oferta1.remitente.id")
	List<Intercambio> findTheyWantToBarter(@Param("loggedUserId")long loggedUserId);
}
