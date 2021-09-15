<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Atividade1</title>
</head>
<body>
<!-- Scriptlet -->

	<%
		String metodo = (String) request.getAttribute("Metodo");
		String uri = (String) request.getAttribute("URI");
		String protocolo = (String) request.getAttribute("Protocolo");
		
		String host = (String) request.getAttribute("Host");
		String navegador = (String) request.getAttribute("Navegador");
		String codigo = (String) request.getAttribute("Codigo");
		String lingua = (String) request.getAttribute("Lingua");
	%>


	<h1>Requisição:</h1>
	<p>O Método é: <% out.print(metodo);%></p>
	<p>A Uri é: <% out.print(uri);%></p>
	<p>O Protocolo é: <% out.print(protocolo);%></p>
	
	<h1>Cabeçalhos:</h1>
	<p>O Host é: <% out.print(host);%></p>
	<p>A Navegador é: <% out.print(navegador);%></p>
	<p>O Encoding aceito é: <% out.print(codigo);%></p>
	<p>A Linguagem aceita é: <% out.print(lingua);%></p>
	</body>
</html>