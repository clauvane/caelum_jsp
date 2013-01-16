<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="br.caelum.clauvane.modelo.Contato"%>
<%@page import="java.util.List"%>
<%@page import="br.caelum.clauvane.dao.ContatoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Listar Contatos</title>
</head>
<body>
<table border="1">
<tr>
	<th>ID</th>
	<th>Nome</th>
	<th>Endereco</th>
	<th>Email</th>
	<th>Data</th>
</tr>
	<%
		ContatoDao dao = new ContatoDao();
		List<Contato> contatos = dao.getContatos();
		for(Contato contato: contatos){
	%>
		<tr>
			<td> <%=contato.getId() %></td>
			<td> <%=contato.getNome() %></td>
			<td> <%=contato.getEndereco() %></td>
			<td> <%=contato.getEmail() %></td>
			<td> <%=new SimpleDateFormat("dd/MM/yyyy").format(new Date(contato.getDataNascimento().getTimeInMillis()))  %></td>
		</tr>
		
	<%
	}
	%>
</table>
</body>
</html>