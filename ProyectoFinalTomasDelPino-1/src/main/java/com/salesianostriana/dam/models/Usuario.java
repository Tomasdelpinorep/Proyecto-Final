package com.salesianostriana.dam.models;

import java.time.LocalDate;
import java.util.Collection;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @AllArgsConstructor @NoArgsConstructor @Builder @Entity @Table(name = "usuario")
public class Usuario implements UserDetails{

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "miSecuencia")
	@SequenceGenerator(name = "miSecuencia", sequenceName = "nombreMiSecuencia", initialValue = 100)
	private long id;
	
	private String username,password,email,nombre,apellidos;
	
	@OneToMany(mappedBy = "remitente", fetch = FetchType.EAGER)
	private List<Oferta> ofertasPublicadas;
	
	@DateTimeFormat(iso = ISO.DATE)
	private LocalDate fecha_alta;
	
	private boolean isAdmin;
	
	@Column(name = "num_ofertas", columnDefinition = "SMALLINT DEFAULT 0")
	private long num_ofertas;
	
	@Column(name = "calificacion", columnDefinition = "NUMERIC(3,2) DEFAULT 0")
	private float calificacion;
	
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		String role = "ROLE_";
		role += (isAdmin) ? "ADMIN" : "USER";
		return List.of(new SimpleGrantedAuthority(role));
	}

	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return true;
	}
}
