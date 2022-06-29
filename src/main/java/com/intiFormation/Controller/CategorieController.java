package com.intiFormation.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.intiFormation.entity.Categorie;
import com.intiFormation.service.IcategorieService;

@RestController
@CrossOrigin(origins="http://localhost:4200")
public class CategorieController {
	@Autowired
	IcategorieService cService; 
	
	@GetMapping("/categories")
	public List<Categorie> cherchertt(){
		List<Categorie> liste=cService.chercherTt(); 
		return liste; 
	}
	
	@GetMapping("/categories/{id}")
	public Categorie chercherun(@PathVariable("id") int id) {
		Categorie c=cService.chercherParId(id).get(); 
		return c; 
	}
	
	@PostMapping("/categories")
	public void inserer (@RequestBody Categorie c) {
		cService.ajouter(c); 
	}
	
	@DeleteMapping("/categories/{id}")
	public void supprimer(@PathVariable("id") int id) {
		cService.supprimer(id);
	}
	
	@PutMapping("/categories")
	public void modifier(@RequestBody Categorie c) {
		cService.ajouter(c); 
	}

}
