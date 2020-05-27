<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Listar Clientes</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/ADM.css" rel="stylesheet">

</head>
<body>
	
	
	<div id="main" class="container">
        <h3 class="page-header">Cliente(s) Cadastrados</h3>
        <c:if test="${not empty clientes}">
            <div class="table-responsive col-md-12">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>Nome</th>
                            <th>CPF</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="cliente" items="${clientes}">
                            <tr>
                                <td>${cliente.nomeCliente }</td>
                                <td>${cliente.cpfCliente }</td>
                                <td><a href="atualizar_cliente/${cliente.idCliente}">Editar</a></td>  
   								<td><a href="deletar_ciente/${cliente.idCliente}">Deletar</a></td>
                            </tr>  
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </c:if>
        <c:if test="${empty clientes}">
            <div class="alert alert-info" role="alert">N&atilde;o h&aacute; clientes cadastrados.</div>
        </c:if>
        <a href="Adm.jsp" class="btn btn-default">Voltar</a>
    </div>
<br/>
	<footer>
            
            <div class="conteiner-footer">
                <div class="conteiner-footer">
                <div class="col-sm-4 col-lg-4 col-md-4">
                <h5>Formas de Pagamento:</h5>
                <img src="imagens/bandeiras.png" alt="">
                </div>
                <div class="col-sm-4 col-lg-4 col-md-4">
            <h5>Contatos:</h5>
                    <h5>(11)96319-7188</h5>
                <img src="" alt="">
            </div>
                <div class="col-sm-4 col-lg-4 col-md-4">
            <h5>Endereço:</h5>
                    <h5>Rua Taquari Nº:666 Mooca-SP</h5>
                <img src="" alt="">
            </div>
            </div>
        </div>
    </footer>	<script src="jquery-3.3.1.slim.min.js" integrity="" crossorigin=""></script>
	<script src="bootstrap.bundle.min.js" integrity="" crossorigin=""></script>



</body>
</html>
