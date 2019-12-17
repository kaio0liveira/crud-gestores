

<%@page import="model.Cadastro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="dao.CadastroDAO"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try{
                CadastroDAO cad1 = new CadastroDAO();
                int id = Integer.parseInt(request.getParameter("id"));
                cad1.excluir(id);
                response.sendRedirect("index.jsp");
           } catch (Exception erro) {
          throw new RuntimeException("Erro 9: " + erro);  
        }
        %>   
    </body>
</html>
