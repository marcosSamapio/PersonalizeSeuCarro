package br.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.dao.PedidoDAO;
import br.entity.Cliente;
import br.entity.Pedido;

@Transactional
@Service
public class PedidoService {
	private PedidoDAO dao;
	
	@Autowired
	public PedidoService(PedidoDAO dao) {
		this.dao = dao;
	}
	
	public void novoPedido(Pedido pedido) {
		dao.criarPedido(pedido);
	}
	
	public void atualiarPedido(Pedido pedido) {
		dao.atualizarPedido(pedido);
	}
	
	public void removerPedido(Pedido pedido) {
		dao.removerPedido(pedido);
	}
	
	public Pedido buscarPedido(Cliente cliente) {
		return dao.buscarPedido(cliente);
	}
}
