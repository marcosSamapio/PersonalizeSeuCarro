package br.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import br.entity.Produto;

@Repository
public class ProdutoDAO {
	@PersistenceContext
	EntityManager manager;
	
	public void cadastrarProduto(Produto produto) {
		try {
			manager.persist(produto);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void atualizarProduto(Produto produto) {
		try {
			manager.merge(produto);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void removerProduto(Produto produto) {
		try {
			manager.remove(produto);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public Produto buscarProduto(Produto produto) {
		try {
			return manager.find(Produto.class, produto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public Produto buscarProdutoById(int idProduto) {
		try {
			return manager.find(Produto.class, idProduto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public Produto buscarProdutoByName(String nome) {
		try {
			return manager.find(Produto.class, nome);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public List<Produto> listProductPerform() {
		try {
			return manager.createQuery("select f from Produto f where categoria = 'Performace'").getResultList();
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return null;
	}
}
