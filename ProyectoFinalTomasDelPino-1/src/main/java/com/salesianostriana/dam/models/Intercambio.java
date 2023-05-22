package com.salesianostriana.dam.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @AllArgsConstructor @NoArgsConstructor @Builder @Entity
public class Intercambio {

	@Id @GeneratedValue
	private long id;
	
	@Column(name = "estado", columnDefinition = "VARCHAR(255) DEFAULT 'Pendiente'")
	private String estado;
	
	@OneToOne 
	private Oferta oferta1; //ESTA ES LA QUE ESTÁ PUBLICADA DE ANTES
	
	@OneToOne 
	private Oferta oferta2; //ESTA ES LA QUE EL USUARIO ELIGE AL DARLE AL BOTÓN DE INTERCAMBIAR
	
	@ManyToOne 
	private Usuario interesado;
}
