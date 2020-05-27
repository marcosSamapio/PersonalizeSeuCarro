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
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container">

			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand navbar-center" href="index.html">Personalize
					seu carro</a>
			</div>
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-left navbar mr-auto">
					<li><a href="index.jsp">Home</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#"
						id="navbarDropdownMenuLink" role="button" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">Categorias</a>
						<div class="dropdown-menu"
							aria-labelledby="navbarDropdownMenuLink">
							<a class="dropdown-item" href="#">Action</a> <a
								class="dropdown-item" href="#">Another action</a> <a
								class="dropdown-item" href="#">Something else here</a>
						</div></li>
					<li><a href="contato.jsp">Contato</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="Cadastro1.jsp">Cadastro</a></li>
					<li><a href="login.jsp">Login</a></li>
				</ul>
			</div>

		</div>

	</nav>
<body>
	
	
	<div id="container">
        
        <h3><br/>Gerenciamento de Clientes</h3><br/>
        <a href="listar_clientes"><button class="btn btn-default">Ir</button></a>
        <br>
        <h3>Adicionar Produtos</h3>
        <a href="CadastroProduto.jsp" class="btn btn-default">Ir</a>
        
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
    </footer>
	<script src="jquery-3.3.1.slim.min.js" integrity="" crossorigin=""></script>
	<script src="bootstrap.bundle.min.js" integrity="" crossorigin=""></script>



</body>
</html>
