package com.intiFormation.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.intiFormation.entity.Utilisateur;

public interface IutilisateurDao extends JpaRepository<Utilisateur, Integer> {
	public Utilisateur findByUsername(String username); 
	public List<Utilisateur> findByRole_IdRole(int id);
}
