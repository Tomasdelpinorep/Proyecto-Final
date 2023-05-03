package com.salesianostriana.dam;

import java.time.LocalDate;

import javax.persistence.GeneratedValue;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @AllArgsConstructor @NoArgsConstructor @Builder
public class Usuario {

	@GeneratedValue
	private long id;
	
	private String username,password,email;
	
	@DateTimeFormat(iso = ISO.DATE)
	private LocalDate fecha_alta;
}
