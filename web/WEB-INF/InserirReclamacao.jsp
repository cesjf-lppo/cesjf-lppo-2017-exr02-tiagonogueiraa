<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta charset="UTF-8"/>
        <title>Reclamação</title>
    </head>
    <body>
        <h1>Reclamação:</h1>
        <p><form method="post">
            <div>Nome: <input type="text" name="nome" size="30"></div><br>
            <div>Email: <input type="text" name="email" size="30"></div><br>
            <div>Descrição:<br> <textarea rows="10" cols="30" name="descricao"></textarea></div><br>
            <div>Status: <select name="status">
                   
                    <option value="0">Aberto.</option>
                    <option value="1">Confirmado.</option>
                    <option value="2">Recusado.</option>
                    <option value="3">Em execução.</option>
                    <option value="4">Resolvido.</option>
                </select><br><br>
                <input type="submit" value="Gravar"/>
            </div>
            
        </form>
    </body>
</html>
