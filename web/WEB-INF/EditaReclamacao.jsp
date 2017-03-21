<%-- 
    Document   : EditaReclamacao
    Created on : 20/03/2017, 21:52:11
    Author     : aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edita Reclamacao</title>
    </head>
    <body>
        <h1>Edita Reclamacao</h1>
       <p><form method="post">
             <div><input type="hidden" name="id" value="${reclamacao.id}" /> id: ${reclamacao.id}</div>
             <div>Nome: <input type="text" name="nome" size="30" value="${reclamcao.nome}"></div><br>
             <div>Email: <input type="text" name="email" size="30" value="${reclamcao.email}"></div><br>
            <div>Descrição:<br> <textarea rows="10" cols="30" name="descricao" value="${reclamacao.descricao}"></textarea></div><br>
            <div>Status: <select name="status" >
                    <option></option>
                    <option value="${reclamacao.status}">Aberto.</option>
                    <option value="${reclamacao.status}">Confirmado.</option>
                    <option value="${reclamacao.status}">Recusado.</option>
                    <option value="${reclamacao.status}">Em execução.</option>
                    <option value="${reclamacao.status}">Resolvido.</option>
                </select><br><br>
                <input type="submit" value="Gravar"/>
            </div>
            
        </form></p>
    </body>
</html>
