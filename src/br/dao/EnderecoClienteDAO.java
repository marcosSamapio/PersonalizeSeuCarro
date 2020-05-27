package br.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import br.entity.Cliente;
import br.entity.EnderecoCliente;

@Repository
public class EnderecoClienteDAO {
	@PersistenceContext
	EntityManager manager;
	
	public EnderecoCliente inserirEndereco(EnderecoCliente endereco) {
		try {
			manager.persist(endereco);
			return endereco;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public void atualizarEndereco(EnderecoCliente endereco) {
		try {
			manager.merge(endereco);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void removerEndereco(EnderecoCliente endereco) {
		try {
			manager.remove(endereco);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public EnderecoCliente buscarEndereco(Cliente cliente) {
		String sqlSelect = "select f from EnderecoCliente f where id_pessoa = :idCliente";
		try {
			int idCliente = cliente.getIdCliente();
			Query query = manager.createQuery(sqlSelect);
			query.setParameter("idCliente", idCliente);
			EnderecoCliente endereco = new EnderecoCliente();
			endereco = (EnderecoCliente) query.getSingleResult();
			return endereco;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	
	}
}
