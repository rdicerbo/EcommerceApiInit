package com.intiFormation.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.intiFormation.entity.Commande;

public interface IcommandeDao extends JpaRepository<Commande, Integer>{

}
