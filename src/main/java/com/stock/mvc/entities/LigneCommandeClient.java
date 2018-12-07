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
public class LigneCommandeClient implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	private Long idLigneCommandeClt;
	
	@ManyToOne
	@JoinColumn(name="idArticle")
	private Article article;
	
	@ManyToOne
	@JoinColumn(name="idCommandeClient")
	private CommandeClient commandeClient;

	
	
	
	
	
	public Long getIdLigneCommandeClt() {
		return idLigneCommandeClt;
	}

	public void setIdLigneCommandeClt(Long id) {
		this.idLigneCommandeClt = id;
	}

	public Article getArticle() {
		return article;
	}

	public void setArticle(Article article) {
		this.article = article;
	}

	public CommandeClient getCommandeClient() {
		return commandeClient;
	}

	public void setCommandeClient(CommandeClient commandeClient) {
		this.commandeClient = commandeClient;
	}
	
	
}
