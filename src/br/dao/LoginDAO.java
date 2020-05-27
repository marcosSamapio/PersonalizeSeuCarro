package br.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import br.entity.Login;


@Repository
public class LoginDAO {
	@PersistenceContext
	EntityManager manager;
	
	public void inserirLogin(Login login) {
		try {
			manager.persist(login);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void atualizarLogin(Login login) {
		try {
			manager.merge(login);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void removerLogin(Login login) {
		try {
			manager.remove(login);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public Login buscarLogin(String userName) {
		return manager.find(Login.class, userName);
	}
}
