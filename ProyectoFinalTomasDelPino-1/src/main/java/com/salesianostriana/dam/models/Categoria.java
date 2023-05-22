package com.salesianostriana.dam.models;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @AllArgsConstructor @NoArgsConstructor @Builder
@Entity @Table(name = "categoria")
public class Categoria {

	@Id
	private long id;
	
	private String nombre,descripcion;
	
	
}
