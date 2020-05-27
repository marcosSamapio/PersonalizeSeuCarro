<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
                        <a href="#">Sair</a>
                    </li>
                </ul>
            </div>
          
        </div>
       
    </nav>
    
    <div id="container" class="col-md-9 order-md-1" >
    
       
   <div id="campos">     
    <div class="col-md-8 order-md-1" >
        <br/>
      <h4>Seus Produtos</h4>
        <div class="row">
          <div class="col-md-6 mb-3">
            <label for="Nome">Produto:</label>
            <input type="text" class="form-control" id="Nome" placeholder="" value="" required>
            
          </div>
          <div class="col-md-3 mb-3">
            <label for="CNPJ">Valor:</label>
            <input type="text" class="form-control" id="CNPJ" placeholder="" value="" required>
            
          </div>
        </div>
        <div class="row">
          <div class="col-md-6 mb-3">
            <label for="Nome">Produto:</label>
            <input type="text" class="form-control" id="Nome" placeholder="" value="" required>
            
          </div>
          <div class="col-md-3 mb-3">
            <label for="CNPJ">Valor:</label>
            <input type="text" class="form-control" id="CNPJ" placeholder="" value="" required>
            
          </div>
        </div>
        <div class="row">
          <div class="col-md-6 mb-3">
            <label for="Nome">Produto:</label>
            <input type="text" class="form-control" id="Nome" placeholder="" value="" required>
            
          </div>
          <div class="col-md-3 mb-3">
            <label for="CNPJ">Valor:</label>
            <input type="text" class="form-control" id="CNPJ" placeholder="" value="" required>
            
          </div>
        </div>
    
       
    <div class=" row col-md-12 mb-1">
           <center><a href=""><button class="btn btn-danger cancelar" type="submit">Finalizar</button></a>
               <a href="index.html"><button class="btn btn-success finalizar" type="submit">Continuar compra</button></a></center>
              </div>
       </div>
           
 
        </div></div>
    
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
