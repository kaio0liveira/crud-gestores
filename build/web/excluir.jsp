
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="executa_excluir.jsp" method="post">
            <label>#</label><br>
            <input type ="text" name="id" value ="<%=request.getParameter("id")%>"/><br>
            
             <label>Nome</label><br>
            <input type ="text" name="Nome"value ="<%=request.getParameter("name")%>"/><br>
             <label>data Nascimento</label><br>
            <input type ="date" name="data"value ="<%=request.getParameter("data")%>"/><br>
             <label>Matricula</label><br>
            <input type ="number" name="Matricula"value ="<%=request.getParameter("matricula")%>"/><br>
             <label>Setor</label><br>
            <input type ="text" name="Setor"value ="<%=request.getParameter("setor")%>"/><br>
            <button type ="submit" >Enviar</button>
        </form>    
    </body>
</html>
