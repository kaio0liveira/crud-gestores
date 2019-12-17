package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class ConnectionFactory {
    
    public static String conexao = "jdbc:mysql://localhost:3306/cadastro";
    public static String  usuario = "root";
    public static String senha = "";
    
    public Connection conn = null;
    
    public ConnectionFactory() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = (Connection) DriverManager.getConnection(conexao, usuario, senha);
            System.out.println("Conexao realizada com sucesso!!");
        } catch (SQLException e) {
             System.err.println("Falha ao conectar no banco, msg:"+ e.getMessage());
        }catch (ClassNotFoundException ex) {
            System.err.println(ConnectionFactory.class.getName() +" - " + ex.getMessage());
        }
        
    }
    
    public Connection getConexao(){
       return this.conn;
    }   
}
