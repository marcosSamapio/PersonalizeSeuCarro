function Login() {
	var done=0;
	var usuario = document.getElementsByName('usuario')[0].value;
	usuario=usuario.toLowerCase();
	var senha= document.getElementsByName('senha')[0].value;
	senha=senha.toLowerCase();

	if(usuario=="root" && senha=="root") {
		window.location="Adm.jsp";
		done=1;
		{ alert("Login e senha corretos!"); }
	}

	if(usuario=="marcos@gmail.com" && senha=="123456") {
		window.location="index.jsp";
		done=2;
		{ alert("Login e senha corretos!\nBoas compras."); }

	}
	
	if(usuario=="" && senha=="") {
		done = 3;
		{ alert("Preencha os campos"); }
	}
	
	if (done==0) { 
		alert("Login e senha incorretos!"); 
	}
}