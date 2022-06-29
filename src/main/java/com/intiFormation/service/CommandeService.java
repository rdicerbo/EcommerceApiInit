package com.intiFormation.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.intiFormation.dao.IcommandeDao;
import com.intiFormation.entity.Commande;

@Service
public class CommandeService implements IcommandeService{
	
	@Autowired
	IcommandeDao cdao; 

	@Override
	public void ajouter(Commande c) {
		// TODO Auto-generated method stub
		cdao.save(c); 
	}

	@Override
	public Optional<Commande> chercherParId(int id) {
		// TODO Auto-generated method stub
		return cdao.findById(id);
	}

	@Override
	public List<Commande> chercherTt() {
		// TODO Auto-generated method stub
		return cdao.findAll();
	}

	@Override
	public void supprimer(int id) {
		// TODO Auto-generated method stub
		cdao.deleteById(id);
	}

	@Override
	public void modifier(Commande c) {
		// TODO Auto-generated method stub
		cdao.save(c);
	}

}
