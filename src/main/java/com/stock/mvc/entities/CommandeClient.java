package com.stock.mvc.entities;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table
public class CommandeClient implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;


	@Id
	@GeneratedValue
	private Long idCommandeClient;

	
	private String code;
	
	@Temporal(TemporalType.TIMESTAMP)
	private Date dateCommande;

	@ManyToOne
	@JoinColumn(name="idClient")
	private Client client;
	
	@OneToMany(mappedBy="commandeClient")
	private List<LigneCommandeClient> lineCommandeClients;
	
	
	
	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public Date getDateCommande() {
		return dateCommande;
	}

	public void setDateCommande(Date dateCommande) {
		this.dateCommande = dateCommande;
	}

	public Client getClient() {
		return client;
	}

	public void setClient(Client client) {
		this.client = client;
	}

	public List<LigneCommandeClient> getLineCommandeClients() {
		return lineCommandeClients;
	}

	public void setLineCommandeClients(List<LigneCommandeClient> lineCommandeClients) {
		this.lineCommandeClients = lineCommandeClients;
	}

	public Long getIdCommandeClient() {
		return idCommandeClient;
	}

	public void setIdCommandeClient(Long id) {
		this.idCommandeClient = id;
	}
	
	
}
