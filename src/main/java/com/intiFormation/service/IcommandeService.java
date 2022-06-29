package com.intiFormation.service;

import java.util.List;
import java.util.Optional;

import com.intiFormation.entity.Commande;

public interface IcommandeService {
	public void ajouter(Commande c); 
	public Optional<Commande> chercherParId(int id); 
	public List<Commande> chercherTt(); 
	public void supprimer(int id); 
	public void modifier(Commande c); 

}
