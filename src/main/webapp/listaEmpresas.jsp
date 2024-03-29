<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, com.alura.gerenciador.servlet.Empresa"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java Standard Taglib</title>
</head>
<body>
	<c:if test="${not empty empresa }">
		Empresa ${ empresa } registrada! <br/>
	</c:if>
	Lista de empresas: <br />
	
	<ul>
	
		<c:forEach items="${empresas}" var="empresa">
			
			<li>
			${ empresa.nombre } - <fmt:formatDate value="${empresa.fechaAbertura }" pattern="dd/MM/yyyy"/>
			<a href="/gerenciador/eliminarEmpresa?id=${ empresa.id }">eliminar</a>
			</li>
		</c:forEach>
	
	</ul>

</body>
</html>