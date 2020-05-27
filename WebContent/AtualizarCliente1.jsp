
<!doctype html>
<html>
  <head>
  
      <link href="css/bootstrap.min.css" rel="stylesheet">
      <link href="css/Cadastro.css" rel="stylesheet">
    
  </head>
<body>
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">

            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
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
                </ul>
                
            </div>
          
        </div>
       
    </nav>
    
    <div id="container" class="col-md-9 order-md-1" >
   <div id="campos">     
    <form novalidate action="cadastrar_cliente" method="post">
       <div class="col-md-8 order-md-1" >
        <br/>
      
        <h4>Cadastro</h4>
        <div class="row">
          <div class="col-md-12 mb-3">
            <label>Nome:</label>
            <input type="text" name="nomeCliente" class="form-control">
            
          </div>
        </div>
        
      </div>
      
       <div class="col-md-8 order-md-1" >
        <div class="row">+
        <div class=" col-md-3 mb-3">
        <label>CPF:</label>
  <input type="text" name="cpfCliente" class="form-control" >
</div>
    
       
       <div class="col-md-6 mb-3">
          <label>Telefone:</label>
          <input type="text" name="telefoneCliente"class="form-control" >
          </div>        
    </div>
    </div>
        
    <div class="col-md-8 order-md-1">
    <div class="row">
    <div class="col-md-5 mb-3">
          <label>E-mail:</label>
          <input type="text" name="emailCliente" class="form-control">
        </div>
       
    <div class="col-md-4 mb-3">
          <label>Senha:</label>
          <input type="text" name="senha" class="form-control">
        </div>
    </div>
	</div>
    

       <br>
    <div class=" row col-md-8 mb-1">
           <right>
           		<a href="index.jsp"><button class="btn btn-danger limpar" type="button">Cancelar</button></a>
           		 <a href="Cadastro1.jsp"><button class="btn btn-danger limpar" type="button">Limpar</button></a>
           		<button class="btn btn-success finalizar" type="submit">Cadastrar</button>               
           	</right>
               
       </div>
       </form>
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
        
        <script src="jquery-3.3.1.slim.min.js" integrity="" crossorigin=""></script>
        <script src="bootstrap.bundle.min.js" integrity="" crossorigin=""></script>
       
     </body>
</html>
