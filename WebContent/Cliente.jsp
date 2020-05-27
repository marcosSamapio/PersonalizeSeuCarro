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
      <h4>Dados Pessoais</h4>
        <div class="row">
          <div class="col-md-12 mb-3">
            <label for="Nome">Nome:</label>
            <input type="text" class="form-control" id="Nome" placeholder="" value="" required>
            
          </div>
        </div>
        
      </div>
      
       <div class="col-md-8 order-md-1" >
        <div class="row">
        <div class=" col-md-3 mb-3">
        <label for="CNPJ">CEP:</label>
  <input type="text" class="form-control" placeholder="" aria-label="" aria-describedby="">
  <div class="input-group-append">
  </div>
</div>
       <div class="col-md-6 mb-3">
          <label for="email">Rua:<span class="text-muted"></span></label>
          <input type="endereco" class="form-control" id="endereco" placeholder="">
          </div>
        
       <div class="col-md-3 mb-3">
          <label for="num">Numero:<span class="text-muted"></span></label>
          <input type="num" class="form-control" id="num" placeholder="">
          </div>
       </div>
    </div>
     
    <div class="col-md-8 order-md-1" >
    <div class="row">   
    <div class="col-md-6 mb-3">
          <label for="barro">Bairro:<span class="text-muted"></span></label>
          <input type="bairro" class="form-control" id="bairro" placeholder="">
          </div>
        
    <div class="col-md-6 mb-3">
            <label for="estado">Estado:</label>
            <input type="bairro" class="form-control" id="estado" placeholder="">
          </div>
    </div>
</div>
       
       <div class="col-md-5 mb-3">
          <label for="com">Complemento:<span class="text-muted"></span></label>
          <input type="com" class="form-control" id="com" placeholder="">
          </div>
       
       <div class="col-md-3 mb-3">
          <label for="tel">Telefone:</label>
          <input type="i" class="form-control" id="tel" placeholder="" required>
        </div>
       
     <div class="col-md-8 order-md-1">
    <div class="row">
    <div class="col-md-5 mb-3">
          <label for="email">E-mail:</label>
          <input type="text" class="form-control" id="E-mail" placeholder="" required>
        </div>
       
    <div class="col-md-4 mb-3">
          <label for="senha">Senha:</label>
          <input type="password" class="form-control" id="senha" placeholder="" required>
        </div>
    </div>
</div>
       
    <div class="col-md-6 mb-3">
          <label for="numcar">Numero do CartÃ£o:</label>
          <input type="text" class="form-control" id="numcar" placeholder="" required>
            </div> 
    <div class="col-md-8 order-md-1">         
    <div class="row">
        <div class="col-md-5 mb-3">
          <label for="datacar">Data de Validade:</label>
          <input type="text" class="form-control" id="datacar" placeholder="" required>
    </div>
        
    <div class="col-md-4 mb-3">
          <label for="cvv">CCV:</label>
          <input type="text" class="form-control" id="cvv" placeholder="" required>
          <div class="invalid-feedback">
        </div>
    </div>
    </div>
    </div>

       
    <div class=" row col-md-8    mb-1">
           <right><a href=""><button class="btn btn-danger cancelar" type="submit">Atualizar</button></a>
               <a href=""><button class="btn btn-success finalizar" type="submit">Limpar</button></a>
        <a href="Compras.html"><button class="btn btn-success finalizar" type="submit">Seus Produtos</button></a>
        </right>
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
