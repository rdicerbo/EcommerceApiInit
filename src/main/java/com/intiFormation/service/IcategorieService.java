package com.intiFormation.service;

import java.util.List;
import java.util.Optional;

import com.intiFormation.entity.Categorie;

public interface IcategorieService {
	public void ajouter(Categorie c); 
	public Optional<Categorie> chercherParId(int id); 
	public List<Categorie> chercherTt(); 
	public void supprimer(int id); 
	public void supprimer(String nomCat); 
	public void modifier(Categorie c); 
}
