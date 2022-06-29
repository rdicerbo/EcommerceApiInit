package com.intiFormation.service;

import java.util.List;
import java.util.Optional;

import com.intiFormation.entity.Utilisateur;

public interface IutilisateurService {
	public Utilisateur chercherParUsername(String username);
	public List<Utilisateur> chercherParRole (int id);
	public Optional<Utilisateur> chercherParId(int id); 
	public void ajouter (Utilisateur u);
}
