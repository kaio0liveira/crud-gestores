

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="executa_inserir.jsp" method="post">
            
            
            <label>Nome</label><br>
            <input type ="text" name="nome"/><br>
             <label>data Nascimento</label><br>
            <input type ="date" name="data_de_nascimento"/><br>
            <label>Matricula</label><br>
            <input type ="number" name="matricula"/><br>
            <label>Setor</label><br>
            <select name="setor" style="width:150px;" name="cars">
                <option value="Administrativo">Administrativo</option>
                <option value="Tecnologia">Tecnologia</option>
                <option value="Recursos humanos">Recursos humanos</option>
                <option value="Help desk">Help desk</option>
            </select>
            
            <button type ="submit" >Cadastrar</button>
        </form>    
    </body>
</html>
