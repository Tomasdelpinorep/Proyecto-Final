//package com.salesianostriana.dam;
//
//import java.util.List;
//
//import org.springframework.boot.ApplicationArguments;
//import org.springframework.boot.ApplicationRunner;
//import org.springframework.security.crypto.password.PasswordEncoder;
//import org.springframework.stereotype.Component;
//
//import com.salesianostriana.dam.models.Usuario;
//import com.salesianostriana.dam.repositories.UsuarioRepository;
//
//import lombok.RequiredArgsConstructor;
//
//@Component
//@RequiredArgsConstructor
//public class InitialData implements ApplicationRunner{
//	
//	private final UsuarioRepository repo;
//	private final PasswordEncoder passwordEncoder;
//
//	@Override
//	public void run(ApplicationArguments args) throws Exception {
//		Usuario usuario = Usuario.builder()
//				.id(1)
//				.isAdmin(false)
//				.username("user")
//				//.password("1234")
//				.password(passwordEncoder.encode("1234"))
//				.build();
//		
//		Usuario admin = Usuario.builder()
//				.isAdmin(true)
//				.username("admin")
//				.password("{bcrypt}$2a$12$x3cnYxcqZYrjk9n86jccXu9MEICIFGlO6RiLa/stuzvhytfzyNOki")
//				.build();
//		
//		repo.saveAll(List.of(usuario, admin));
//		
//	}
//
//}
