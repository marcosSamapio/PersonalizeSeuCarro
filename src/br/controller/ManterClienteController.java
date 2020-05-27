package br.controller;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import br.entity.Cartao;
import br.entity.Cliente;
import br.entity.EnderecoCliente;
import br.service.CartaoService;
import br.service.ClienteService;
import br.service.EnderecoService;



@Transactional
@Controller
public class ManterClienteController {
	private ClienteService cs;
	private EnderecoService es;
	private CartaoService card;
	
	Cliente client = new Cliente();
	EnderecoCliente endereco = new EnderecoCliente();
	Cartao cartao = new Cartao();
	
	@Autowired
	public ManterClienteController(ClienteService cs, EnderecoService es, CartaoService card) {
		this.cs = cs;
		this.es = es;
		this.card = card;
	}
	
	@RequestMapping("index")
	public String inicio() {
		return "index";
	}
	
	@RequestMapping("/cadastrar_cliente")
	public String cadastroCliente(Cliente cliente) {
		client = cs.cadastrarCliente(cliente);
		return "Cadastro2";
	}
	
	@RequestMapping("/cadastrar_endereco")
	public String cadstrarEnderecoCliente(EnderecoCliente endereco) {
		endereco.setCliente(client);
		es.inserirEndereco(endereco);
		return "Cadastro3";
	}
	
	@RequestMapping("/cadastrar_cartao")
	public String cadastrarCartaoCliente(Cartao cartao) {
		cartao.setCliente(client);
		card.cadastrarCartao(cartao);
		return "index";
	}
	
	@RequestMapping("/atualizar_cadastro_cliente")
	public String atualizarCliente(Cliente cliente) {
		cs.atualizarCliente(cliente);
		return "index";
	}
	
	@RequestMapping("/buscar_cliente")
	public Cliente buscarCliente(String cpfCliente) {
		return cs.buscarClienteByCpf(cpfCliente);
	}
	
	
	@RequestMapping("deletar_ciente/{id}")
	public String deletarClienteById(@PathVariable("id") Long id, Model model) {
		client = cs.buscarCliente(id.intValue());
		cartao = card.buscarCartao(client);
		endereco = es.buscarEndereco(client);
		card.removerCartao(cartao);
		es.removerEndereco(endereco);
		cs.removerCliente(client);
		return "redirect:/listar_clientes";
	}
	
	@RequestMapping("/listar_clientes")
	public String listarClientes(Model model) {
		List<Cliente> cliente = cs.listarClientes();
		model.addAttribute("clientes", cliente);
		return "ExibirListarCliente";
	}
}
