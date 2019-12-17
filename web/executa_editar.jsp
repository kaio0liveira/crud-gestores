

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="dao.CadastroDAO"%>
<%@page import="model.Cadastro"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try{
                Cadastro cad = new Cadastro(); 
                CadastroDAO cad1 = new CadastroDAO();
                 if (request.getParameter("nome").equals("")||request.getParameter("data_de_nascimento").equals("")||request.getParameter("matricula").equals("")||request.getParameter("setor").equals("")){
                    response.sendRedirect("index.jsp");
                 }else{
                    cad.setNome(request.getParameter("nome"));
                    cad.setData_nascimento(request.getParameter("data_de_nascimento"));
                    int intMatricula = Integer.parseInt(request.getParameter("matricula"));
                    cad.setMatricula(intMatricula);
                    cad.setSetor(request.getParameter("setor"));
                    cad.setId(Integer.parseInt(request.getParameter("id")));
                    cad1.alterar(cad);
                    response.sendRedirect("index.jsp");
                }
            }catch(Exception erro){
                throw new RuntimeException("Erro 8: " + erro);  
            }
        %> 
    </body>
</html>
