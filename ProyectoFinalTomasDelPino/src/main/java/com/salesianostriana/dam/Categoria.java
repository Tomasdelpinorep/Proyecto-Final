package com.salesianostriana.dam;

import javax.persistence.GeneratedValue;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @AllArgsConstructor @NoArgsConstructor @Builder
public class Categoria {

	@GeneratedValue
	private long id;
	
	private String nombre;
}
