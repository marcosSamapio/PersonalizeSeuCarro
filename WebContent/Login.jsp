
<html>
	<head>
		<meta charset="utf-8">
		
		<link rel="icon" href="">
		
		<title>Login</title>
		
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<link href="css/bootstrap.css" rel="stylesheet">
		<link href="css/Login.css" rel="stylesheet">
		
		<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
		<script type="text/javascript" src="js/popper.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
		<script type="text/javascript" src="js/fazerlogin.js"></script>
	</head>
	
	<body class="text-center">
		<div class="container">
			<form class="form-signin">
				<div id="login-inputs">
					<img class="mb-4" src="imagens/login.png" alt="" width="80" height="80">
					<input type="email" placeholder="Usuario" name="usuario" class="form-control" required autofocus>
					<input type="password" placeholder="Senha" name="senha" class="form-control" required>
				</div>
				<div id="enviar">
					<button onclick="Login()" type="button" class="btn btn-lg btn-success btn-block btn-signin" value="Login">Login</button>
				</div>
			</form>
		</div>
	</body>
</html>