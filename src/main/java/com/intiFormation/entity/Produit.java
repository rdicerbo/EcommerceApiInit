package com.intiFormation.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;


@Entity
public class Produit {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int idProduit;
	private String libProduit;
	private String img;
	private int quantite;
	
	@ManyToOne
	@JoinColumn(name="idCategorie")
	private Categorie categorie;
	
	public Produit() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Produit(int idProduit, String libProduit, String img, int quantite, Categorie categorie) {
		super();
		this.idProduit = idProduit;
		this.libProduit = libProduit;
		this.img = img;
		this.quantite = quantite;
		this.categorie = categorie;
	}
	
	
	@Override
	public String toString() {
		return "Produit [idProduit=" + idProduit + ", libProduit=" + libProduit + ", img=" + img + ", quantite="
				+ quantite + ", categorie=" + categorie.getIdCategorie() + "]";
	}


	public Produit(String libProduit, String img, int quantite, Categorie categorie) {
		super();
		this.libProduit = libProduit;
		this.img = img;
		this.quantite = quantite;
		this.categorie = categorie;
	}



	public int getIdProduit() {
		return idProduit;
	}
	public void setIdProduit(int idProduit) {
		this.idProduit = idProduit;
	}
	public String getLibProduit() {
		return libProduit;
	}
	public void setLibProduit(String libProduit) {
		this.libProduit = libProduit;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public int getQuantite() {
		return quantite;
	}
	public void setQuantite(int quantite) {
		this.quantite = quantite;
	}
	public Categorie getCategorie() {
		return categorie;
	}
	public void setCategorie(Categorie categorie) {
		this.categorie = categorie;
	}
	
	

}
