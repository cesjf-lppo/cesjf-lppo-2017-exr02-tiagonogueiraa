<%-- 
    Document   : ListaReclamacao
    Created on : 17/03/2017, 22:05:23
    Author     : aluno
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reclamações</title>
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
                    <td>${reclamacao.id}</td>
                    <td>${reclamacao.nome}</td>
                    <td>${reclamacao.email}</td>
                    <td>${reclamacao.descricao}</td>
                    <td>${reclamacao.status}</td>
                    
                </tr>
            </c:forEach>
        </table>
        </div>
    </body>
</html>
