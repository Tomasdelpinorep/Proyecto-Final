package com.salesianostriana.dam.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.salesianostriana.dam.models.Oferta;

public interface OfertaRepository extends JpaRepository<Oferta, Long>{

	@Query("SELECT o FROM Oferta o WHERE o.cat.id = :categoryId")
	List<Oferta> findByCategoryId(@Param("categoryId") long categoryId);
}
