<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Java Standard Tag Library</title>
</head>
<body>

	<p>
		<b>Parametri inseriti :</b>
	</p>
	<!--  paramValue = Map<key, String[]>  parametri passati nella URL-->
	<ul>
		<c:forEach items="${ paramValues }" var="p">
			<li><b><c:out value="${ p.key }:"></c:out></b></li>
			<c:forEach items="${ p.value }" var="v">
				<c:out value="${ v }"></c:out>
			</c:forEach>
			<br />
			<br />
		</c:forEach>
	</ul>


	<!--  Accesso ad un parametro diretto tramite il suo nome -->
	<b>Nome Cognome:</b>
	<ul>
		<li><c:out value="${ param.nom } ${ param.prenom }"></c:out></li>
	</ul>


	<!-- Scorrimento stringa attraverso forTokens attraverso un delim ',' -->
	<b>Lista paesi visitati:</b>
	<ul>
		<li><c:out value="${ param.pays }"></c:out></li>
		<c:forTokens delims="," items="${ param.autre }" var="p">
			<li><c:out value="${ p }"></c:out></li>
		</c:forTokens>

	</ul>


</body>
</html>