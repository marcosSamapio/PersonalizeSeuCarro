package br.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.dao.CartaoDAO;
import br.entity.Cartao;
import br.entity.Cliente;

@Transactional
@Service
public class CartaoService {
	private CartaoDAO dao;
	
	@Autowired
	public CartaoService(CartaoDAO dao) {
		this.dao = dao;
	}
	
	public void cadastrarCartao(Cartao cartao) {
		dao.inserirCartao(cartao);
	}
	
	public void atualizarCartao(Cartao cartao) {
		dao.atualizarCartao(cartao);
	}
	
	public void removerCartao(Cartao cartao) {
		dao.removerCartao(cartao);
	}
	
	public Cartao buscarCartao(Cliente cliente) {
		return dao.buscarCartao(cliente);
	}
}
