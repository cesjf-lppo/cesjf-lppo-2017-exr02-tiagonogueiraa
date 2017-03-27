<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta charset="utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Reclamações</title>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"  />

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" />

        <!-- Latest compiled and minified JavaScript -->
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body class="container">
        <h1>Lista de Reclamação.</h1>
        <div class="table-responsive">
            <table class="table table-condesed">
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
            </table></div>

    </body>
</html>
