<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="canonical" href="https://html5-templates.com/" />
<title>AutoPeça - Home</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/modern-business.css" rel="stylesheet">

</head>

<body>

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
					<li><a href="index.html">Home</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="Cadastro1.jsp">Cadastro</a></li>
					<li><a href="Login.jsp">Login</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<header id="myCarousel" class="carousel slide">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>

		<div class="carousel-inner">
			<div class="item active">
				<div class="fill" style="">
					<img src="imagens/carrossel/c0860ecb-audi-sq8-3.jpg">
				</div>
				<div class="carousel-caption">

					<h2></h2>
				</div>
			</div>
			<div class="item">
				<div class="fill" style=""></div>
				<div class="carousel-caption">
					<h2></h2>
				</div>
			</div>
			<div class="item">
				<div class="fill" style=""></div>
				<div class="carousel-caption">
					<h2></h2>
				</div>
			</div>
		</div>


		<a class="left carousel-control" href="#myCarousel" data-slide="prev">
			<span class="icon-prev"></span>
		</a> <a class="right carousel-control" href="#myCarousel"
			data-slide="next"> <span class="icon-next"></span>
		</a>
	</header>

	<div class="conteiner">
		<h2>Categorias</h2>
		<div class="row products">

			<div class="col-lg-12">

				<div class="col-sm-4 col-lg-4 col-md-4">
					<div class="thumbnail">
						<img src="imagens/performance/coletor.jpg" alt="">
						<div class="caption">
							<h4>
								<a href="product_performs"><center>Performance</center></a>
							</h4>
							<p></p>
						</div>
					</div>
				</div>

				<div class="col-sm-4 col-lg-4 col-md-4">
					<div class="thumbnail">
						<img src="imagens/Internos/modulo.jpg" alt="">
						<div class="caption">
							<h4>
								<a href="Interno.jsp"><center>Interno</center></a>
							</h4>
							<p></p>
						</div>
					</div>
				</div>
				<div class="col-sm-4 col-lg-4 col-md-4">
					<div class="thumbnail">
						<img
							src="imagens/externos/aerofolio-gol-g2-g3-g4-1995-a-2014-preto-D_NQ_NP_738673-MLB31140856628_062019-F.jpg"
							alt="">
						<div class="caption">
							<h4>
								<a href="Esterno.jsp"><center>Externo</center></a>
							</h4>
							<p></p>
						</div>
					</div>
				</div>
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
</body>
<script src="js/jquery.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/npm.js"></script>
<script src="js/bootstrap.min.js"></script>


<script>
    $('.carousel').carousel({
        interval: 5 
    })
    </script>



</html>
