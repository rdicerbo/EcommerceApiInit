package com.intiFormation.Controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.intiFormation.entity.Categorie;
import com.intiFormation.entity.Produit;
import com.intiFormation.service.IcategorieService;
import com.intiFormation.service.IproduitService;

@RestController
@CrossOrigin(origins="http://localhost:4200")
public class ProduitController {
	@Autowired
	IproduitService pService; 
	@Autowired
	IcategorieService cService; 
	
	@GetMapping("/produits")
	public List<Produit> cherchertt(){
		List<Produit> liste=pService.chercherAll(); 
		return liste; 
	}
	
	@GetMapping("/produits/{id}")
	public Produit chercherun(@PathVariable("id") int id) {
		Produit p=pService.chercherParId(id).get(); 
		return p; 
	}
	
	@PostMapping("/produits")
	public void inserer (@RequestParam("libProduit") String libProduit,
										   @RequestParam("quantite") int quantite,
										   @RequestParam("idCat") int idCat, 
										   @RequestParam("file") MultipartFile file, 
										   HttpSession session) 
	{
		String filename= file.getOriginalFilename(); 
		String path=session.getServletContext().getRealPath("/")+"\\imageproduit\\"+filename;
		
		Produit p=new Produit(); 
		p.setImg("imageproduit\\"+filename); 
		p.setLibProduit(libProduit); 
		p.setQuantite(quantite);
		Optional<Categorie> c=cService.chercherParId(idCat);
		if(c.isPresent()) {
			p.setCategorie(c.get());
		}else {
			System.out.println("La categorie n'existe pas");
		}
		
		pService.ajouter(p); 
		
		try{  
	        byte barr[]=file.getBytes();  
	          
	        BufferedOutputStream bout=new BufferedOutputStream(  
	                 new FileOutputStream(path));  
	        bout.write(barr);  
	        bout.flush();  
	        bout.close();  
	          
	        }catch(Exception e){System.out.println(e);} 
		
		
	}
	
	@DeleteMapping("/produits/{id}")
	public void supprimer(@PathVariable("id") int id) {
		pService.supprimer(id);
	}
	
	@PutMapping("/produits/{id}")
	public void modifier(@PathVariable("id") int id,@RequestParam("libProduit") String libProduit,@RequestParam("quantite") int quantite,@RequestParam("idCat") int idCat, @RequestParam("file") MultipartFile file, HttpSession session) {
		String filename= file.getOriginalFilename(); 
		String path=session.getServletContext().getRealPath("/")+"\\imageproduit\\"+filename;
		
		Produit p=new Produit(); 
		p.setIdProduit(id); 
		p.setImg("imageproduit\\"+filename); 
		p.setLibProduit(libProduit); 
		p.setQuantite(quantite);
		Optional<Categorie> c=cService.chercherParId(idCat);
		if(c.isPresent()) {
			p.setCategorie(c.get());
		}else {
			System.out.println("La categorie n'existe pas");
		}
		
		pService.ajouter(p); 
		
		try{  
	        byte barr[]=file.getBytes();  
	          
	        BufferedOutputStream bout=new BufferedOutputStream(  
	                 new FileOutputStream(path));  
	        bout.write(barr);  
	        bout.flush();  
	        bout.close();  
	          
	        }catch(Exception e){System.out.println(e);} 
		
	}
	
	@GetMapping("/produitsByIdCat/{id}")
	public List<Produit> chercherParIdCat(@PathVariable("id") int id){
		List<Produit> liste=pService.chercherAllP(id); 
		return liste; 
	}

}
