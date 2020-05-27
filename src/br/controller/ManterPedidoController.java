package br.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import br.entity.Cliente;
import br.entity.Pedido;
import br.entity.Produto;
import br.service.ClienteService;
import br.service.PedidoService;
import br.service.ProdutoService;

@Controller
public class ManterPedidoController {
	private PedidoService ps;
	private ClienteService cs;
	private ProdutoService productService;
	
	Cliente cliente = new Cliente();
	Produto produto = new Produto();
	Pedido pedido = new Pedido();
	
	@Autowired
	public ManterPedidoController(PedidoService ps, ClienteService cs, ProdutoService productService) {
	this.ps = ps;
	this.cs = cs;
	this.productService = productService;
	}
	
	@RequestMapping("/criar_pedido")
	public String criarPedido(Pedido pedido) {
		cliente = buscarClienteById(18);
		produto = buscarProdutoById(2);
		pedido.setCliente(cliente);
		pedido.setProduto(produto);
		pedido.setDataPedido(new Date());
		pedido.setStatusPedido("Confirmando Pedido");
		ps.novoPedido(pedido);
		return "index";
	}
	
	public Cliente buscarClienteById(int id) {
		return cs.buscarCliente(id);
	}
	
	public Produto buscarProdutoById(int idProduto) {
		return productService.buscarProdutoById(idProduto);
	}
}
