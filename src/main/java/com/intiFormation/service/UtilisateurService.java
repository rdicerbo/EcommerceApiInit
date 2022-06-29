package com.intiFormation.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.intiFormation.dao.IutilisateurDao;
import com.intiFormation.entity.Utilisateur;

@Service
public class UtilisateurService implements IutilisateurService{
	@Autowired
	IutilisateurDao udao; 
	
	public Utilisateur chercherParUsername(String username) {
		return udao.findByUsername(username);
	}
	public List<Utilisateur> chercherParRole (int id){
		return udao.findByRole_IdRole(id);
	}
	
	
	public void ajouter (Utilisateur u) {
		// TODO Auto-generated method stub
		udao.save(u); 
	}
	
	@Override
	public Optional<Utilisateur> chercherParId(int id) {
		return udao.findById(id);
	}

}
