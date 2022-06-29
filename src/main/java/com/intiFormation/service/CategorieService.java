package com.intiFormation.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.intiFormation.dao.IcategorieDao;
import com.intiFormation.entity.Categorie;

@Service
public class CategorieService implements IcategorieService{

	@Autowired
	IcategorieDao cdao; 
	
	@Override
	public void ajouter(Categorie c) {
		// TODO Auto-generated method stub
		cdao.save(c); 
	}

	@Override
	public Optional<Categorie> chercherParId(int id) {
		// TODO Auto-generated method stub
		return cdao.findById(id);
	}

	@Override
	public List<Categorie> chercherTt() {
		// TODO Auto-generated method stub
		return cdao.findAll();
	}

	@Override
	public void supprimer(int id) {
		// TODO Auto-generated method stub
		cdao.deleteById(id);
	}

	@Override
	public void supprimer(String nomCat) {
		// TODO Auto-generated method stub
		cdao.deleteByNomCategorie(nomCat);
	}

	@Override
	public void modifier(Categorie c) {
		// TODO Auto-generated method stub
		cdao.save(c); 
	}

}
