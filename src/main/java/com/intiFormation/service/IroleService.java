package com.intiFormation.service;

import java.util.List;
import java.util.Optional;

import com.intiFormation.entity.Role;

public interface IroleService {
	public Optional<Role> chercherParId(int id);
	public List<Role> chercherTt(); 
}
