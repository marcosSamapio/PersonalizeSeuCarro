package br.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Entity
@Table(name="ENDERECOCLIENTE")
public class EnderecoCliente implements Serializable{
	@Id
	@NotNull
	@Column(name="ID_ENDERECO")
	private int idEndereco;
	
	@NotNull
	@Column(name="CEP")
	private String cepCliente;
	
	@NotNull
	@Column(name="ESTADO")
	private String estadoCliente;
	
	@NotNull
	@Column(name="CIDADE")
	private String cidadeCliente;
	
	@NotNull
	@Column(name="BAIRRO")
	private String bairroCliente;
	
	@NotNull
	@Column(name="RUA")
	private String ruaCliente;
	
	@NotNull
	@Column(name="NUMERO_CASA")
	private String numeroCliente;
	
	@NotNull
	@Column(name="COMPLEMENTO")
	private String complementoCliente;
	
	@NotNull
	@ManyToOne
	@JoinColumn(name="ID_PESSOA")
	private Cliente cliente;
	

	public String getCepCliente() {
		return cepCliente;
	}

	public void setCepCliente(String cepCliente) {
		this.cepCliente = cepCliente;
	}

	public String getEstadoCliente() {
		return estadoCliente;
	}

	public void setEstadoCliente(String estadoCliente) {
		this.estadoCliente = estadoCliente;
	}

	public String getCidadeCliente() {
		return cidadeCliente;
	}

	public void setCidadeCliente(String cidadeCliente) {
		this.cidadeCliente = cidadeCliente;
	}

	public String getBairroCliente() {
		return bairroCliente;
	}

	public void setBairroCliente(String bairroCliente) {
		this.bairroCliente = bairroCliente;
	}

	public String getRuaCliente() {
		return ruaCliente;
	}

	public void setRuaCliente(String ruaCliente) {
		this.ruaCliente = ruaCliente;
	}

	public String getNumeroCliente() {
		return numeroCliente;
	}

	public void setNumeroCliente(String numeroCliente) {
		this.numeroCliente = numeroCliente;
	}

	public String getComplementoCliente() {
		return complementoCliente;
	}

	public void setComplementoCliente(String complementoCliente) {
		this.complementoCliente = complementoCliente;
	}

	public Cliente getCliente() {
		return cliente;
	}

	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}

	public int getIdEndereco() {
		return idEndereco;
	}

	public void setIdEndereco(int idEndereco) {
		this.idEndereco = idEndereco;
	}

	
}
