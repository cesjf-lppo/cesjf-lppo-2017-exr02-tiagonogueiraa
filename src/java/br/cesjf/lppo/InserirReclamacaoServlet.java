/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.cesjf.lppo;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author aluno
 */
@WebServlet(name = "InserirReclamacaoServlet", urlPatterns = {"/Inserir.html"})
public class InserirReclamacaoServlet extends HttpServlet {

   

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        //pegar o jsp e responder para o usuário
        request.getRequestDispatcher("WEB-INF/InserirReclamacao.jsp").forward(request, response);
        
       
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        //pegar os dados do formulário e inserir no banco
        
        Reclamacao reclamacao = new Reclamacao();
        //reclamacao.setId(Long.parseLong(request.getParameter("id")));
        reclamacao.setNome(request.getParameter("nome"));
        reclamacao.setEmail(request.getParameter("email"));
        reclamacao.setDescricao(request.getParameter("descricao"));
        reclamacao.setStatus(Integer.parseInt(request.getParameter("status")));
        
            try {
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                String url = "jdbc:derby://localhost:1527/lppo-2017-1";
                
                Connection conexao = DriverManager.getConnection(url, "usuario", "senha");
                Statement operacao = conexao.createStatement();
                String sql = "INSERT INTO reclamacao(nome, email, descricao, status)   VALUES ('"
                        + reclamacao.getNome()+ "','"
                        + reclamacao.getEmail()+ "','"
                        + reclamacao.getDescricao()+"',"
                        + reclamacao.getStatus()+ ")";
                operacao.executeUpdate(sql);
                
            } catch (ClassNotFoundException ex) {
            Logger.getLogger(InserirReclamacaoServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(InserirReclamacaoServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        
            response.sendRedirect("lista.html");
      
    }

 

}
