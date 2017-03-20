<%-- 
    Document   : ListaReclamacao
    Created on : 17/03/2017, 22:05:23
    Author     : aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reclamações</title>
    </head>
    <body>
        <h1>Lista de Reclamação.</h1>
        <<tr>
                <th>ID</th>
                <th>Nome</th>
                <th>Email</th>
                <th>Descricao</th>
                <th>Status</th>
            </tr>
            <c:forEach var="reclamacao" items="${reclamacao}">
                <tr>
                    <td>${reclamacao.id}</a></td>
                    <td>${reclamacao.nome}</td>
                    <td>${pessoa.email}</td>
                    <td>${pessoa.descricao}</td>
                    <td>${pessoa.status}</td>
                    
                </tr>
            </c:forEach>
        </table>
        </div>
    </body>
</html>
