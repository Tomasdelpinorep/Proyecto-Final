package com.salesianostriana.dam;

import javax.persistence.GeneratedValue;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @AllArgsConstructor @NoArgsConstructor @Builder
public class Oferta {

	@GeneratedValue
	private long id;
	
	private double valorEstimado;
	private String remitenteBusca;
	private Categoria remitenteBuscaCat;
	private Categoria cat;
	private String nombre,descripcion,estado;
	public Usuario remitente;
	
}
