<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta charset="UTF-8"/>
        <title>Reclamação</title>
        
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
        <h1>Reclamação:</h1>
        <p><form class="form-inline" method="post">
            <div class="form-group">
            <label for="exampleInputName">Nome:</label>
            <input type="text" class="form-control" id="exampleInputName2" placeholder="Nome" name="nome" size="50">
            </div><br><br>
            <div class="form-group">
                <label for="exampleInputName2">Email: </label>
                <input type="text" class="form-control" id="exampleInputName2" placeholder="Email" name="email" size="50">
	    </div><br><br>
	    
            <div class="form-group">
		<label for="exampleInputName">Descrição:</label><br> 
		<textarea  class="form-control" rows="10" cols="50" name="descricao"></textarea>
	    </div><br><br>
            <div>
		<label for="exampleInputName">Status: </label>
		<select class="form-control" name="status">
                   
                    <option value="0">Aberto.</option>
                    <option value="1">Confirmado.</option>
                    <option value="2">Recusado.</option>
                    <option value="3">Em execução.</option>
                    <option value="4">Resolvido.</option>
                </select><br><br>
                <input class="btn btn-default" type="submit" value="Gravar"/>
            </div>
            
        </form>
    </body>
</html>
