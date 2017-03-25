<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta charset="utf-8"/>
        <title>Reclamações</title>
        <link href="estilo.css" rel="stylesheet"/>
    </head>
    <body>
        <h1>Lista de Reclamação.</h1>
        <table>
            <tr>
                <th>ID</th>
                <th>Nome</th>
                <th>Email</th>
                <th>Descricao</th>
                <th>Status</th>
            </tr>
            <c:forEach var="reclamacao" items="${solicitacoes}">
                <tr>
                    <td><a href="editaReclamacao.html?id=${reclamacao.id}">${reclamacao.id}</td> 
                    <td class="nome">${reclamacao.nome}</td>
                    <td>${reclamacao.email}</td>
                    <td>${reclamacao.descricao}</td>
                    <td>${reclamacao.statusTexto}</td>
                      <td><a href="ExluiReclamacao.html?id=${reclamacao.id}">X</a></td>
                </tr>
            </c:forEach>
        </table>
        
    </body>
</html>
