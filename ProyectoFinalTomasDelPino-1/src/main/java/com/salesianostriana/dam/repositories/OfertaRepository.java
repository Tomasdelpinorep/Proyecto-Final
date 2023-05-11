package com.salesianostriana.dam.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.salesianostriana.dam.models.Oferta;

@Repository
public interface OfertaRepository extends JpaRepository<Oferta, Long>{

}
