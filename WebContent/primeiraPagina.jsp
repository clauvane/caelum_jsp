<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Primeira Pagina jsp</title>
</head>
<body>
	<%--comentario Primeira pagina jsp  --%>
	<%String texto = "apostila caelum - jsp"; %>
	<%out.println(texto); %>
	<%String desenvolvedor = "desenvolvido por Clauvane."; %>
	<br/>
	<%=desenvolvedor %>
	<%System.out.println("foi tudo executado"); %>
</body>
</html>