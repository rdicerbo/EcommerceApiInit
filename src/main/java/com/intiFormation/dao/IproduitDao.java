package com.intiFormation.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.intiFormation.entity.Produit;

public interface IproduitDao extends JpaRepository<Produit, Integer>{
	
	@Query("select p from Produit p join p.categorie c where c.idCategorie=:idCat")
	public List<Produit> getAllByIdCat(@Param("idCat") int idCat);
	//ou 
	public List<Produit> findByCategorie_idCategorie(int idCat); 

}
