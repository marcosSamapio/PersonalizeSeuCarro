package br.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.dao.ClienteDAO;
import br.entity.Cliente;

@Transactional
@Service
public class ClienteService {
	private ClienteDAO dao;

	@Autowired
	public ClienteService(ClienteDAO dao) {
		this.dao = dao;
	}

	public Cliente cadastrarCliente(Cliente cliente) {
		return dao.cadastrarCliente(cliente);
	}

	public void atualizarCliente(Cliente cliente) {
		dao.atualizarCliente(cliente);
	}

	public void removerCliente(Cliente cliente) {
		dao.removerCliente(cliente);
	}

	public Cliente buscarClienteByCpf(String cpfCliente) {
		return dao.buscarClienteCpf(cpfCliente);
	}
	
	public Cliente buscarCliente(int idCliente) {
		return dao.buscarClienteId(idCliente);
	}
	
	public List<Cliente> listarClientes() {
		return dao.listarClientes();
	}
}
