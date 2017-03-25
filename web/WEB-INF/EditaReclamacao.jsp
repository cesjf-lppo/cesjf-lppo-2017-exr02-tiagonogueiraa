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
             <div>Nome: <input type="text" name="nome" size="30" value="${reclamacao.nome}"></div><br>
             <div>Email: <input type="text" name="email" size="30" value="${reclamacao.email}"></div><br>
            <div>Descrição:<br> <textarea rows="10" cols="30" name="descricao">${reclamacao.descricao}</textarea></div><br>
            <div>Status: <select name="status" >
                    <option value="0" ${reclamacao.status==0?"selected":""}>Aberto.</option>
                    <option value="1" ${reclamacao.status==1?"selected":""}>Confirmado.</option>
                    <option value="2" ${reclamacao.status==2?"selected":""}>Recusado.</option>
                    <option value="3" ${reclamacao.status==3?"selected":""}>Em execução.</option>
                    <option value="4" ${reclamacao.status==4?"selected":""}>Resolvido.</option>
                </select><br><br></div>
            <div><input type="submit" value="Gravar"/></div>
           
            
            
            
        </form></p>
    </body>
</html>
