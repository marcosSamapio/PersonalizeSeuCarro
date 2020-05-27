package br.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.dao.EnderecoClienteDAO;
import br.entity.Cliente;
import br.entity.EnderecoCliente;

@Transactional
@Service
public class EnderecoService {
	private EnderecoClienteDAO dao;
	
	@Autowired
	public EnderecoService(EnderecoClienteDAO dao) {
		this.dao = dao;
	}
	
	public void inserirEndereco(EnderecoCliente endereco) {
		dao.inserirEndereco(endereco);
		
	}
	
	public void atualizarEndereco(EnderecoCliente endereco) {
		dao.atualizarEndereco(endereco);
	}
		
	public void removerEndereco(EnderecoCliente endereco) {
		dao.removerEndereco(endereco);
	}
	
	public EnderecoCliente buscarEndereco(Cliente cliente) {
		return dao.buscarEndereco(cliente);
	}
}
