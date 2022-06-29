package com.intiFormation.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class LigneCommande {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int idLigneCommande;
	
	@ManyToOne
	@JoinColumn(name="idCommande")
	private Commande commandes;
	
	@ManyToOne
	@JoinColumn(name="idProduit")
	private Produit produit;
	
	private int quantite;

	
	public LigneCommande() {
		super();
		// TODO Auto-generated constructor stub
	}

	public LigneCommande(Commande commandes, Produit produit, int quantite) {
		super();
		this.commandes = commandes;
		this.produit = produit;
		this.quantite = quantite;
	}

	public int getIdLigneCommande() {
		return idLigneCommande;
	}

	public void setIdLigneCommande(int idLigneCommande) {
		this.idLigneCommande = idLigneCommande;
	}

	

	public Commande getCommandes() {
		return commandes;
	}

	public void setCommandes(Commande commandes) {
		this.commandes = commandes;
	}

	public Produit getProduit() {
		return produit;
	}

	public void setProduit(Produit produit) {
		this.produit = produit;
	}

	public int getQuantite() {
		return quantite;
	}

	public void setQuantite(int quantite) {
		this.quantite = quantite;
	}

	@Override
	public String toString() {
		return "LigneCommande [produit=" + produit + ", quantite=" + quantite + "]";
	}

}
