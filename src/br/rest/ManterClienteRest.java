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

import br.entity.Cliente;
import br.service.ClienteService;

@RestController
public class ManterClienteRest {
	private ClienteService cs;
	
	@Autowired
	public ManterClienteRest (ClienteService cs) {
		this.cs = cs;
	}
	
	@RequestMapping(method=RequestMethod.GET, value="rest/cliente/{id}")
	public @ResponseBody Cliente mostrarCliente(@PathVariable("id") Long id) {
		return cs.buscarCliente(id.intValue());
	}
	
	@Transactional
	@RequestMapping(method=RequestMethod.POST, value="rest/cadastrarCliente")
	public ResponseEntity<Cliente> criarChamado(@RequestBody Cliente cliente){
		cs.cadastrarCliente(cliente);
		return new ResponseEntity<Cliente>(cliente, HttpStatus.OK);
	}
	
}
