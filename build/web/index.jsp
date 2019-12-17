<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="dao.CadastroDAO"%>
<%@page import ="model.Cadastro"%>
<%@page import ="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <button> <a href="inserir.jsp">NOVO</a></button>
        <%
            try{
                out.print("<table>");
                out.print("<tr>");
                out.print("<th>Codigo</th><th>Nome</th><th>Matricula</th><th>Data Nascimento</th><th>Setor</th><th>Editar</th><th>Excluir</th>");
                CadastroDAO cad = new CadastroDAO();
                  if(request.getParameter("") == "" || request.getParameter("") == null){
                      ArrayList<Cadastro> lista = cad.listar();
                      for (int num=0; num < lista.size(); num++){
                          
                        out.print("<tr>");
                            out.print("<td>"+lista.get(num).getId()+"</td>");
                            out.print("<td>"+lista.get(num).getNome()+"</td>");
                            out.print("<td>"+lista.get(num).getMatricula()+"</td>");
                            out.print("<td>"+lista.get(num).getData_nascimento()+"</td>");
                            out.print("<td>"+lista.get(num).getSetor()+"</td>");
                            out.print("<td><a href='editar.jsp?id="+lista.get(num).getId()+"&nome="+lista.get(num).getNome()+"&data_de_nascimento="+lista.get(num).getData_nascimento()+"&matricula="+lista.get(num).getMatricula()+"&setor="+lista.get(num).getSetor()+"'>editar</a></td>");
                            out.print("<td><a href='executa_excluir.jsp?id="+lista.get(num).getId()+"'>excluir</a></td>");
                        out.print("</tr>");
                      }
                      
                  }else{
                       ArrayList<Cadastro> lista = cad.listar();
                      for (int num=0; num < lista.size(); num++){
                          
                        out.print("<tr>");
                            out.print("<td>"+lista.get(num).getId()+"</td>");
                            out.print("<td>"+lista.get(num).getNome()+"</td>");
                            out.print("<td>"+lista.get(num).getData_nascimento()+"</td>");
                            out.print("<td>"+lista.get(num).getMatricula()+"</td>");
                            out.print("<td>"+lista.get(num).getSetor()+"</td>");
                            out.print("<td><a href='editar.jsp?id="+lista.get(num).getId()+"&nome="+lista.get(num).getNome()+"&data_de_nascimento="+lista.get(num).getData_nascimento()+"&matricula="+lista.get(num).getMatricula()+"&setor="+lista.get(num).getSetor()+"'>editar</a></td>");
                            out.print("<td><a href='executa_excluir.jsp?id="+lista.get(num).getId()+"'>excluir</a></td>");
                        out.print("</tr>");
                      }
                  
                  }
                out.print("</tr>");
                out.print("</table>");
                
            }catch(Exception erro){
                throw new RuntimeException("Erro 10: " + erro);  
            }
        %> 
       
       
    </body>
</html>
