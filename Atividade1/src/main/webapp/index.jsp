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


	<h1>Requisi��o:</h1>
	<p>O M�todo �: <% out.print(metodo);%></p>
	<p>A Uri �: <% out.print(uri);%></p>
	<p>O Protocolo �: <% out.print(protocolo);%></p>
	
	<h1>Cabe�alhos:</h1>
	<p>O Host �: <% out.print(host);%></p>
	<p>A Navegador �: <% out.print(navegador);%></p>
	<p>O Encoding aceito �: <% out.print(codigo);%></p>
	<p>A Linguagem aceita �: <% out.print(lingua);%></p>
	</body>
</html>