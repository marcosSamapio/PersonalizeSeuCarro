package br.entity;
import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="CARTAO")
public class Cartao implements Serializable{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="ID_CARTAO")
	private int idCartao;

	@Column(name="N_CARTAO")
	private String numCartao;
	
	
	@Column(name="DT_VALIDADE")
	private String validadeCartao;
	
	
	@Column(name="NOME_CARTAO")
	private String nomeCartao;
	
	
	@Column(name="CVV")
	private String cvvCartao;
	
	
	@ManyToOne
	@JoinColumn(name="ID_PESSOA")
	private Cliente cliente;

	public int getIdCartao() {
		return idCartao;
	}
	
	public void setIdCartao(int idCartao) {
		this.idCartao = idCartao;
	}

	public String getValidadeCartao() {
		return validadeCartao;
	}
	
	public void setValidadeCartao(String validadeCartao) {
		this.validadeCartao = validadeCartao;
	}

	public String getNomeCartao() {
		return nomeCartao;
	}

	public void setNomeCartao(String nomeCartao) {
		this.nomeCartao = nomeCartao;
	}

	public String getCvvCartao() {
		return cvvCartao;
	}

	public void setCvvCartao(String cvvCartao) {
		this.cvvCartao = cvvCartao;
	}
	
	public Cliente getCliente() {
		return cliente;
	}
	
	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}

	public String getNumCartao() {
		return numCartao;
	}

	public void setNumCartao(String numCartao) {
		this.numCartao = numCartao;
	}
}
