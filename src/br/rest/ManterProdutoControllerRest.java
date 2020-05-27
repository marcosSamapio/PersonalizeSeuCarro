package br.rest;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import br.entity.Produto;
import br.service.ProdutoService;

@RestController
public class ManterProdutoControllerRest {
	private ProdutoService ps;
	
	@Autowired
	public ManterProdutoControllerRest(ProdutoService ps) {
		this.ps = ps;
	}
	
	@RequestMapping(method=RequestMethod.GET, value="rest/produto/{id}")
	public @ResponseBody Produto mostrarProduto(@PathVariable("id") Long id) {
		return ps.buscarProdutoById(id.intValue());
	}
	
	@Transactional
	@RequestMapping(method=RequestMethod.POST, value="rest/cadastrarProduto")
	public ResponseEntity<Produto> criarProduto(@RequestBody Produto produto){
		ps.cadastrarProduto(produto);
		return new ResponseEntity<Produto>(produto, HttpStatus.OK);
	}
}
