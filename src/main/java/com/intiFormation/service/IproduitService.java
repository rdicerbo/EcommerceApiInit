package com.intiFormation.service;

import java.util.List;
import java.util.Optional;

import com.intiFormation.entity.Produit;

public interface IproduitService {
	public void ajouter(Produit p); 
	public Optional<Produit> chercherParId(int id);
	public void modifier(Produit p) ;
	public void supprimer(int id); 
	public List<Produit> chercherAll();
	public List<Produit> chercherAllP(int idCat);

}
