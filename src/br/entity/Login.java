package br.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Entity
@Table(name="LOGIN")
public class Login implements Serializable{
	@Id
	@Column(name="USER_NAME")
	private String userName;
	
	@NotNull
	@Column(name="SENHA")
	private String senha;
	
	@NotNull
	@Column(name="TIPO_USER")
	private String tipoUser;

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public String getTipoUser() {
		return tipoUser;
	}

	public void setTipoUser(String tipoUser) {
		this.tipoUser = tipoUser;
	}
}
