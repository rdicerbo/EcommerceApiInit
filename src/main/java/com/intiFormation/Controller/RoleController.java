package com.intiFormation.Controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.intiFormation.entity.Role;
import com.intiFormation.service.IroleService;

@RestController
@CrossOrigin(origins="http://localhost:4200")
public class RoleController {
	@Autowired
	IroleService rService; 
	
	@GetMapping("/roles/{id}")
	public Role chercherParRole(@PathVariable("id") int id){
		Role r=rService.chercherParId(id).get(); 
		return r; 
	}


}
