package br.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import br.entity.Cliente;
import br.entity.Pedido;

@Repository
public class PedidoDAO {
	@PersistenceContext
	EntityManager manager;
	
	public void criarPedido(Pedido pedido) {
		try {
			manager.persist(pedido);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void atualizarPedido(Pedido pedido) {
		try {
			manager.merge(pedido);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void removerPedido(Pedido pedido) {
		try {
			manager.remove(pedido);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public Pedido buscarPedido(Cliente cliente) {
		try {
			return manager.find(Pedido.class, cliente);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
