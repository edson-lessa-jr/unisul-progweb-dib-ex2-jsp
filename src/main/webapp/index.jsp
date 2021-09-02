<%@ page import="br.unisul.aula.Auxiliar" %>
<%@ page contentType="text/html;charset=UTF-8"
         language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%!
    public String sorvete(String teste) {
        return null;
    }
%>

<form action="pagina2.jsp" method="post">
    Nome: <input type="text" name="txtNome" id="nome">
    <br>
    <input type="submit" value="Enviar">
</form>

<%

    for (int i = 0; i <Auxiliar.pessoaList.size() ; i++) {
%>
<h1><%=Auxiliar.pessoaList.get(i)%></h1>
<%
    }
%>

</body>
</html>
