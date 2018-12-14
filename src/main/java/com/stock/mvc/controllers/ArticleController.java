package com.stock.mvc.controllers;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.stock.mvc.entities.Article;
import com.stock.mvc.entities.Category;
import com.stock.mvc.services.IArticleService;
import com.stock.mvc.services.ICategoryService;
import com.stock.mvc.services.IFlickrService;



@Controller
@RequestMapping(value = "/article")
public class ArticleController {

	@Autowired
	IArticleService articleService;

	@Autowired
	ICategoryService categoryService;
	
	@Autowired
	IFlickrService flikrService;

	@RequestMapping(value = "/")
	public String client(Model model) {

		List<Article> articles = articleService.selectAll();

		if (articles == null) {
			articles = new ArrayList<Article>();
		}

		model.addAttribute("articles", articles);

		return "article/article";
	}

	@RequestMapping(value = "/nouveau", method = RequestMethod.GET)
	public String ajouterClient(Model model) {

		Article article = new Article();
		List<Category> categories = categoryService.selectAll();
		
		model.addAttribute("article", article);
		model.addAttribute("categories", categories);
		if (categories==null) {
			categories= new ArrayList<Category>();
		}
		
		return "article/ajouterArticle";

	}

	@RequestMapping(value = "/enregistrer", method = RequestMethod.POST)
	public String enregistrerClient(Model model, Article article, MultipartFile file) {
		String photoUrl = null;
		if (article != null) {
			InputStream stream = null;
			if (file != null && !file.isEmpty()) {
				try {
					stream = file.getInputStream();
					photoUrl = flikrService.savePhoto(stream, article.getCodeArticle());
					article.setPhoto(photoUrl);
				} catch (Exception e) {
					e.printStackTrace();
				} finally {
					try {
						stream.close();
					} catch (IOException e) {
						e.printStackTrace();
					}
				}
			}
			
			if (article.getIdArticle()!=null) {
				articleService.update(article);
			} else {
				articleService.save(article);
			}
			
		}
		return "redirect:/article/";
	}
	
	@RequestMapping(value = "/modifier/{idArticle}")
	public String modifierClient(Model model, @PathVariable Long idArticle) {
		
		if(idArticle != null) {
			Article article = articleService.getById(idArticle);
			List<Category> categories = categoryService.selectAll();
			model.addAttribute("categories", categories);
			if (categories==null) {
				categories= new ArrayList<Category>();
				
			}
			model.addAttribute("categories", categories);
			if (article != null) {
				model.addAttribute("article", article);
				
			}
		}
		return "article/ajouterArticle";
	}
	
	@RequestMapping(value = "/supprimer/{idArticle}")
	public String supprimerClient(Model model, @PathVariable Long idArticle) {
		
		if(idArticle != null) {
			Article article = articleService.getById(idArticle);
			if (article != null) {
				//TODO verification avant suppression
				articleService.remove(idArticle);
			}
		}
		
		return "redirect:/article/";
	}
	

}
