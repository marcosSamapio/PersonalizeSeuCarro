<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="canonical" href="https://html5-templates.com/" />
    <title>AutoPeça - Produtos</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/CssProduto.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
</head>

<body>

    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">

            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand navbar-center" href="index.html">Personalize seu carro</a>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-left navbar mr-auto">
                    <li>
                        <a href="index.html">Home</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Categorias</a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <a class="dropdown-item" href="#">Action</a>
                            <a class="dropdown-item" href="#">Another action</a>
                            <a class="dropdown-item" href="#">Something else here</a>
                        </div>
                    </li>
                    <li>
                        <a href="#">Contato</a>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="Cadastro.jsp">Cadastro</a>
                    </li>
                     <li>
                        <a href="Login.jsp">Login</a>
                    </li>
                </ul>
            </div>
          
        </div>
       
    </nav>
    
    <div id="conteiner">
    <div class="row products">

            <div class="col-lg-12">
                <br/>
                <center><h2>Itens Internos</h2></center>
            </div>
		
			<div class="col-lg-12">
    
			<c:forEach var="produto" items="${produtos }">
				<div class="col-sm-4 col-lg-4 col-md-4">
                <div class="thumbnail">
					<img src="<c:url value="imagens/Internos/${produto.nome}.jpg"/>" />
                    <div class="caption">
						<h4><center>${produto.nome }</center></h4>
                        <br/>
						<center><p>${produto.valorProduto }</p></center>
                        <br/>
                        <br/>
                        <center><a href="criar_pedido"><button class="btn btn-successr finalizar" type="button">Comprar</button></a></center>
					</div>
				</div>
              </div>
			</c:forEach>        
		</div>
	</div>
	</div>

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
       <hr>

 
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>

 
    <script>
    $('.carousel').carousel({
        interval: 5000 //changes the speed
    })
    </script>

</body>

</html>

