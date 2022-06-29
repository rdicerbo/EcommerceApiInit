package com.intiFormation.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.intiFormation.entity.Categorie;

public interface IcategorieDao extends JpaRepository<Categorie, Integer>{
	public void deleteByNomCategorie (String nomCategorie); 
}
