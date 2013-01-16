<%@page import="java.util.ArrayList"%>
<%@page import="br.caelum.clauvane.dao.ContatoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://displaytag.sf.net" prefix="dt" %>
<%@ taglib uri="http://displaytag.sf.net/el" prefix="dtel" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.8.3.js"></script>
<script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
<title>display tag</title>
</head>
<body>
<jsp:include page="cabecalho.jsp"></jsp:include>
<jsp:useBean id="dao" class="br.caelum.clauvane.dao.ContatoDao"/>
<% 
request.setAttribute("contatos", dao.getContatos()); 
%>
	<dt:table name="contatos"/>

<c:import url="rodape.jsp"></c:import>
</body>
</html>