package com.salesianostriana.dam.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;


import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @AllArgsConstructor @NoArgsConstructor @Builder
@Entity
public class Oferta {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	
	private double valorEstimado;
	private String remitenteBusca;
	
	@ManyToOne
	private Categoria remitenteBuscaCat;
	
	@ManyToOne
	private Categoria cat;
	
	private String nombre,descripcion,estado;
	
	@OneToOne
	public Usuario remitente;
	
	//Atributos para coches
	@Column(name = "km", columnDefinition = "INT DEFAULT 0")
	private int km;
	@Column(name = "consumo", columnDefinition = "VARCHAR(255) DEFAULT 0")
	private double consumo;
	@Column(name = "num_puertas", columnDefinition = "SMALLINT DEFAULT 0")
	private short numPuertas;
	
	//Atributos para motos
	@Column(name = "cilindrada", columnDefinition = "VARCHAR(255) DEFAULT 0")
	private String cilindrada;
	
	//Atributos para moda
	@Column(name = "talla", columnDefinition = "VARCHAR(255) DEFAULT 0")
	private String talla;
	
	//Atributos para inmobiliaria
	@Column(name = "m2", columnDefinition = "float DEFAULT 0")
	private double m2;
	@Column(name = "direccion", columnDefinition = "VARCHAR(255) DEFAULT 0")
	private String direccion;
	@Column(name = "num_habitaciones", columnDefinition = "SMALLINT DEFAULT 0")
	private short numHabitaciones;
	@Column(name = "num_banos", columnDefinition = "SMALLINT DEFAULT 0")
	private short numBanos;
	
	//Atributos para ordenadores
	@Column(name = "almacenamiento", columnDefinition = "VARCHAR(255) DEFAULT 0")
	private double almacenamiento;
	
	//Atributos para bicicletas
	@Column(name = "num_marchas", columnDefinition = "SMALLINT DEFAULT 0")
	private short numMarchas;
	@Column(name = "tipo_bici", columnDefinition = "VARCHAR(255) DEFAULT 0")
	private String tipoBici;
	
	//Atributos para servicios
	@Column(name = "duracion", columnDefinition = "SMALLINT DEFAULT 0")
	private short duracion;
	@Column(name = "titulacion", columnDefinition = "VARCHAR(255) DEFAULT 0")
	private String titulacion;
}
