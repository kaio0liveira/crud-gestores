
package dao;

import model.Cadastro;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;


public class CadastroDAO {
    
    private Connection conexao;
    private PreparedStatement stmt;
    private Statement st;
    private ResultSet resul;
    private ArrayList<Cadastro> lista = new ArrayList<>();
    
    public CadastroDAO() {
      conexao = new ConnectionFactory().getConexao();
    }
    public void inserir(Cadastro cadastro){
        String sql = "INSERT INTO cad_gestores (nome,matricula,data_de_nascimento,setor) VALUES (?,?,?,?)";
        try {
           stmt = conexao.prepareStatement(sql);
           stmt.setString(1, cadastro.getNome());
           stmt.setInt(2, cadastro.getMatricula());
           stmt.setString(3, cadastro.getData_nascimento());
           stmt.setString(4, cadastro.getSetor());
           stmt.execute();
           stmt.close();
           
        } catch (Exception erro) {
          throw new RuntimeException("Erro 2: " + erro);  
        }
        
        
    }
    public void alterar(Cadastro cadastro){
        String sql = "UPDATE cad_gestores SET nome = ?,matricula = ?,data_de_nascimento = ?,setor = ? WHERE id = ?";
            
        try {
           stmt = conexao.prepareStatement(sql);
           stmt.setString(1, cadastro.getNome());
           stmt.setInt(2, cadastro.getMatricula());
           stmt.setString(3, cadastro.getData_nascimento());
           stmt.setString(4, cadastro.getSetor());
           stmt.setInt(5, cadastro.getId());
           stmt.execute();
           stmt.close();
            
        } catch (Exception erro) {
          throw new RuntimeException("Erro 3: " + erro);  
        }
        
        
    }
    public void excluir (int valor){
        String sql = "DELETE FROM cad_gestores WHERE id = "+ valor;
        try {
            st = conexao.createStatement();
            st.execute(sql);
            st.close();
        } catch (Exception erro) {
          throw new RuntimeException("Erro 4: " + erro);  
        }
    }
    
    public ArrayList<Cadastro> listar(String id){
        return null;
    }
    
    public ArrayList<Cadastro> listar(){
        String sql = "SELECT id, nome, data_de_nascimento, matricula, setor FROM cad_gestores;";
        
        try {
           st=conexao.createStatement();
           resul = st.executeQuery(sql);
           while (resul.next()){
               Cadastro cadastro = new Cadastro();
               cadastro.setId(resul.getInt("id"));
               cadastro.setMatricula(resul.getInt("matricula"));
               cadastro.setNome(resul.getString("nome"));
               //int intMatricula = Integer.parseInt(request.getParameter("matricula"));
               // cad.setMatricula(intMatricula);
               
               cadastro.setData_nascimento(resul.getString("data_de_nascimento"));
               cadastro.setSetor(resul.getString("setor"));
               lista.add(cadastro);
           }
        } catch (Exception erro) {
             throw new RuntimeException("Erro 5: " + erro);  
        }
        return lista;
    }
     public ArrayList<Cadastro> listarTodos( String valor){
        String sql = "SELECT *FROM cad_gestores WHERE id LIKE'%"+valor+"%'";
        
        try {
           st=conexao.createStatement();
           resul = st.executeQuery(sql);
           while (resul.next()){
               Cadastro cadastro = new Cadastro();
               cadastro.setId(resul.getInt("id"));
               cadastro.setMatricula(resul.getInt("matricula"));
               cadastro.setNome(resul.getString("nome"));
               cadastro.setData_nascimento(resul.getString("data_de_nascimento"));
               cadastro.setSetor(resul.getString("setor"));
               lista.add(cadastro);
           }
        } catch (Exception erro) {
             throw new RuntimeException("Erro 6: " + erro);  
        }
        return lista;
    }
    
    
}
