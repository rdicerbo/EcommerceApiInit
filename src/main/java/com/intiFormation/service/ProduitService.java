package com.intiFormation.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.intiFormation.dao.IproduitDao;
import com.intiFormation.entity.Produit;

@Service
public class ProduitService implements IproduitService {
	@Autowired
	IproduitDao pdao;

	@Override
	public void ajouter(Produit p) {
		// TODO Auto-generated method stub
		pdao.save(p); 
	}

	@Override
	public Optional<Produit> chercherParId(int id) {
		// TODO Auto-generated method stub
		return pdao.findById(id);
	}

	@Override
	public void modifier(Produit p) {
		// TODO Auto-generated method stub
		pdao.save(p);
	}

	@Override
	public void supprimer(int id) {
		// TODO Auto-generated method stub
		pdao.deleteById(id);
	}

	@Override
	public List<Produit> chercherAll() {
		// TODO Auto-generated method stub
		return pdao.findAll();
	}

	@Override
	public List<Produit> chercherAllP(int idCat) {
		// TODO Auto-generated method stub
		return pdao.findByCategorie_idCategorie(idCat);
	} 
	

}
