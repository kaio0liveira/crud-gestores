<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>EDITAR</h1>
        <form action="executa_editar.jsp" method="post">
            <label>ID</label><br>
            <input type ="number" name="id" value ="<%=request.getParameter("id")%>"/><br>
             <label>Nome</label><br>
            <input type ="text" name="nome"value ="<%=request.getParameter("nome")%>"/><br>
             <label>data Nascimento</label><br>
            <input type ="date" name="data_de_nascimento"value ="<%=request.getParameter("data_de_nascimento")%>"/><br>
            <label>Matricula</label><br>
            <input type ="number" name="matricula"value ="<%=request.getParameter("matricula")%>"/><br>
            <label>Setor</label><br>
            <select name="setor" style="width:150px;" value ="<%=request.getParameter("setor")%>"/>
                <option value="Administrativo">Administrativo</option>
                <option value="Tecnologia">Tecnologia</option>
                <option value="Recursos humanos">Recursos humanos</option>
                <option value="Help desk">Help desk</option>
            </select>
            
            
            
            <button type ="submit" >Atualizar</button>
        </form>    
    </body>
</html>
