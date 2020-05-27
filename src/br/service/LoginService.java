package br.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.dao.LoginDAO;
import br.entity.Login;

@Transactional
@Service
public class LoginService {
	private LoginDAO dao;
	
	@Autowired
	public LoginService(LoginDAO dao) {
		this.dao = dao;
	}
	
	public void cadastrarLogin(Login login) {
		dao.inserirLogin(login);
	}
	
	public void atualizarLogi(Login login) {
		dao.atualizarLogin(login);
	}
	
	public void removerLogin(Login login) {
		dao.removerLogin(login);
	}
	
	public Login buscarLogin(String userName) {
		return dao.buscarLogin(userName);
	}
}
