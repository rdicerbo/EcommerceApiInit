package com.intiFormation.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Role {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int idRole;
	private String librole;
	private String description;
	
		
	public Role() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Role(int idRole, String librole, String description) {
		super();
		this.idRole = idRole;
		this.librole = librole;
		this.description = description;
	}
	
	public int getIdRole() {
		return idRole;
	}
	public void setIdRole(int idRole) {
		this.idRole = idRole;
	}
	public String getLibrole() {
		return librole;
	}
	public void setLibrole(String librole) {
		this.librole = librole;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
}
