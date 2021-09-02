<%@ page import="br.unisul.aula.Pessoa" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String nome = request.getParameter("txtNome");
    Pessoa pessoa = new Pessoa(nome);
    out.println(pessoa.getNome());
%>
<form action="cadastroPessoa" method="post">
    Nome: <input type="text" name="somenteNome" id="nome" value="<%=nome%>" readonly><br>
    Indade: <input type="number" name="nrIdade" id="idade">
    <hr>
    <input type="submit" value="Enviar">
</form>
</body>
</html>
