package com.salesianostriana.dam.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.salesianostriana.dam.baseServices.BaseService;
import com.salesianostriana.dam.models.Intercambio;
import com.salesianostriana.dam.repositories.IntercambioRepository;

@Service
public class IntercambioService  extends BaseService<Intercambio, Long, IntercambioRepository>{
	
	@Autowired
	private IntercambioRepository intercambioRepository;
	
	public IntercambioService(IntercambioRepository repo) {
		super(repo);
		// TODO Auto-generated constructor stub
	}
	
	public List<Intercambio> findIWantToBarter(long loggedUserId) {
		return intercambioRepository.findIWantToBarter(loggedUserId);
	}
	
	public List<Intercambio> findTheyWantToBarter(long loggedUserId) {
		return intercambioRepository.findTheyWantToBarter(loggedUserId);
	}

}
