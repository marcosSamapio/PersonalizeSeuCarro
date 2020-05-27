package br.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.entity.Produto;
import br.service.ProdutoService;

@Controller
public class ManterProdutoController {
	private ProdutoService ps;
	
	Produto produto = new Produto();
	
	@Autowired
	public ManterProdutoController(ProdutoService ps) {
		this.ps = ps;
	}
	
	@RequestMapping("/product_performs")
	public String findProductPerforms(Model model) {
		List<Produto> produto = ps.listProductPerform();
		model.addAttribute("produtos", produto);
		return "Performace";
	}
	
	@RequestMapping("/cadastrar_produto")
	public String cadastrarProduto(Produto produto) {
		ps.cadastrarProduto(produto);
		return "Adm";
	}
	
	@RequestMapping("/editar_produto")
	public String editarProduto(Produto produto) {
		ps.atualizarProduto(produto);
		return "index";
	}
	
	@RequestMapping("/deletar_produto")
	public String deletarProduto(Produto produto) {
		ps.removerProduto(produto);
		return "index";
	}
	
	
}
