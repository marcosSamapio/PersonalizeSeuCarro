package br.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.dao.ProdutoDAO;
import br.entity.Produto;

@Transactional
@Service
public class ProdutoService {
	private ProdutoDAO dao;
	
	@Autowired
	public ProdutoService(ProdutoDAO dao) {
		this.dao = dao;
	}
	
	public void cadastrarProduto(Produto produto) {
		dao.cadastrarProduto(produto);
	}
	
	public void atualizarProduto(Produto produto) {
		dao.atualizarProduto(produto);
	}
	
	public void removerProduto(Produto produto) {
		dao.cadastrarProduto(produto);
	}
	
	public Produto buscarProduto(Produto produto) {
		return dao.buscarProduto(produto);
	}
	
	public Produto buscarProdutoById(int idProduto) {
		return dao.buscarProdutoById(idProduto);
	}
	
	public Produto buscarProdutoByName(String nome) {
		return dao.buscarProdutoByName(nome);
	}
	
	public List<Produto> listProductPerform() {
		return dao.listProductPerform();
	}
}
