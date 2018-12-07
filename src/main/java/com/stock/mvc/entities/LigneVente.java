package com.stock.mvc.entities;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table
public class LigneVente implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	private Long idLigneDeVente;
	
	@ManyToOne
	@JoinColumn(name = "idArticle" )
	private Article article;
	
	@ManyToOne
	@JoinColumn(name = "vente" )
	private Vente vente;
	
	public Long getIdLigneDeVente() {
		return idLigneDeVente;
	}

	public void setIdLigneDeVente(Long id) {
		this.idLigneDeVente = id;
	}

	public Article getArticle() {
		return article;
	}

	public void setArticle(Article article) {
		this.article = article;
	}
	
	
}
