package com.intiFormation.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.intiFormation.dao.IroleDao;
import com.intiFormation.entity.Role;

@Service
public class RoleService implements IroleService{
	@Autowired
	IroleDao rdao; 
	
	@Override
	public Optional<Role> chercherParId(int id) {
		return rdao.findById(id);
	}
	
	@Override
	public List<Role> chercherTt() {
		return rdao.findAll();
	}
}
