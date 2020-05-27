package br.dao;

import java.io.Serializable;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import br.entity.Cartao;
import br.entity.Cliente;

@Repository
public class CartaoDAO implements Serializable{
	@PersistenceContext
	EntityManager manager;
	
	public void inserirCartao(Cartao cartao) {
		try {
			manager.persist(cartao);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void atualizarCartao(Cartao cartao) {
		try {
			manager.merge(cartao);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void removerCartao(Cartao cartao) {
		try {
			manager.remove(cartao);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public Cartao buscarCartao(Cliente cliente) {
		String sqlSelect = "select f from Cartao f where id_pessoa = :idCliente";
		
		try {
//			int idCliente = cliente.getIdCliente();
//			return manager.find(Cartao.class, idCliente);
			int idCliente = cliente.getIdCliente();
			Query query = manager.createQuery(sqlSelect);
			query.setParameter("idCliente", idCliente);
			Cartao cartao = new Cartao();
			cartao = (Cartao) query.getSingleResult();
			return cartao;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
}
