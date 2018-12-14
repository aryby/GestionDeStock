package com.stock.mvc.controllers;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.stock.mvc.entities.Category;
import com.stock.mvc.services.ICategoryService;


@Controller
@RequestMapping(value = "/category")
public class CategoryController {
	@Autowired
	ICategoryService categorytService;


	@RequestMapping(value = "/")
	public String client(Model model) {

		List<Category> categories = categorytService.selectAll();

		if (categories == null) {
			categories = new ArrayList<Category>();
		}

		model.addAttribute("categories", categories);

		return "category/category";
	}

	@RequestMapping(value = "/nouveau", method = RequestMethod.GET)
	public String ajouterCategory(Model model) {

		Category category = new Category();
		model.addAttribute("category", category);
		return "category/ajouterCategory";

	}

	@RequestMapping(value = "/enregistrer", method = RequestMethod.POST)
	public String enregistrerClient(Model model, Category category) {
		
		if (category != null) {			
			if (category.getIdCategory()!=null) {
				categorytService.update(category);
			} else {
				categorytService.save(category);
			}
		}
		return "redirect:/category/";
	}
	
	@RequestMapping(value = "/modifier/{idCategory}")
	public String modifierClient(Model model, @PathVariable Long idCategory) {
		
		if(idCategory != null) {
			Category category = categorytService.getById(idCategory);
			if (category != null) {
				model.addAttribute("category", category);
			}
		}
		return "category/ajouterCategory";
	}
	
	@RequestMapping(value = "/supprimer/{idCategory}")
	public String supprimerClient(Model model, @PathVariable Long idCategory) {
		
		if(idCategory != null) {
			Category category = categorytService.getById(idCategory);
			if (category != null) {
				//TODO verification avant suppression
				categorytService.remove(idCategory);
			}
		}
		
		return "redirect:/category/";
	}
}
