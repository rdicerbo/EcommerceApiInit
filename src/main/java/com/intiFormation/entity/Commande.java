package com.intiFormation.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class Commande {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int idCommande;
	private String dateCommande;
	
	@ManyToOne
	@JoinColumn(name="idUser")
	private Utilisateur user;
	
	@OneToMany(mappedBy="commandes", cascade = CascadeType.PERSIST)
	private List<LigneCommande> ligneCommandes;
	
	

	public Commande(String dateCommande, Utilisateur user) {
		super();
		this.dateCommande = dateCommande;
		this.user = user;
	}

	public Commande(String dateCommande, Utilisateur user, List<LigneCommande> ligneCommandes) {
		super();
		this.dateCommande = dateCommande;
		this.user = user;
		this.ligneCommandes = ligneCommandes;
	}

	public int getIdCommande() {
		return idCommande;
	}

	public void setIdCommande(int idCommande) {
		this.idCommande = idCommande;
	}

	public String getDateCommande() {
		return dateCommande;
	}

	public void setDateCommande(String dateCommande) {
		this.dateCommande = dateCommande;
	}

	public Utilisateur getUser() {
		return user;
	}

	public void setUser(Utilisateur user) {
		this.user = user;
	}

	public List<LigneCommande> getLigneCommandes() {
		return ligneCommandes;
	}

	public void setLigneCommandes(List<LigneCommande> ligneCommandes) {
		this.ligneCommandes = ligneCommandes;
	}

	@Override
	public String toString() {
		return "Commande [ligneCommandes=" + ligneCommandes + "]";
	}

	
	

}
