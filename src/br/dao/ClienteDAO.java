package br.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import br.entity.Cliente;

@Repository
public class ClienteDAO {
	@PersistenceContext
	EntityManager manager;
	
	public Cliente cadastrarCliente(Cliente cliente) {
		try {
			manager.persist(cliente);
			return cliente;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public Cliente atualizarCliente(Cliente cliente) {
		try {
			 return manager.merge(cliente);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public void removerCliente(Cliente cliente) {
		try {
			manager.remove(cliente);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public Cliente buscarClienteCpf(String cpfCliente) {
		try {
			return manager.find(Cliente.class, cpfCliente);
		} catch (Exception e) {
			e.printStackTrace();
		} return null;
	}
	
	public Cliente buscarClienteId(int idCliente) {
		try {
			return manager.find(Cliente.class, idCliente);
		} catch (Exception e) {
			e.printStackTrace();
		} return null;
	}
	
	public List<Cliente> listarClientes() {
		try {
			return manager.createQuery("select f from Cliente f").getResultList();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
