

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
                if (request.getParameter("nome").equals("")||request.getParameter("matricula").equals("")||request.getParameter("data_de_nascimento").equals("")||request.getParameter("setor").equals("")){
                    response.sendRedirect("index.jsp");
                }else{
                    cad.setNome(request.getParameter("nome"));
                    int intMatricula = Integer.parseInt(request.getParameter("matricula"));
                    cad.setMatricula(intMatricula);
                    cad.setData_nascimento(request.getParameter("data_de_nascimento"));
                    cad.setSetor(request.getParameter("setor"));
                    cad1.inserir(cad);
                    response.sendRedirect("index.jsp");
                }
                
            }catch(Exception erro){
                throw new RuntimeException("Erro 7: " + erro);  
            }
        %> 
    </body>
</html>
