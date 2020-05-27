package br.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Entity
@Table(name="PRODUTO")
public class Produto {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="ID_PRODUTO")
	private int idProduto;
	
	@NotNull
	@Column(name="NOME_PRODUTO")
	private String nome;
	
	@Column(name="MODELO")
	private String modeloProduto;
	
	@Column(name="ESPECIFICACOES")
	private String especificacoesProduto;
	
	@NotNull
	@Column(name="VALOR")
	private double valorProduto;
	
	@NotNull
	@Column(name="CATEGORIA")
	private String categoria;

	public int getIdProduto() {
		return idProduto;
	}

	public void setIdProduto(int idProduto) {
		this.idProduto = idProduto;
	}

	public String getModeloProduto() {
		return modeloProduto;
	}

	public void setModeloProduto(String modeloProduto) {
		this.modeloProduto = modeloProduto;
	}

	public String getEspecificacoesProduto() {
		return especificacoesProduto;
	}

	public void setEspecificacoesProduto(String especificacoesProduto) {
		this.especificacoesProduto = especificacoesProduto;
	}

	public double getValorProduto() {
		return valorProduto;
	}

	public void setValorProduto(double valorProduto) {
		this.valorProduto = valorProduto;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCategoria() {
		return categoria;
	}

	public void setCategoria(String categoriaProduto) {
		this.categoria = categoriaProduto;
	}
}
