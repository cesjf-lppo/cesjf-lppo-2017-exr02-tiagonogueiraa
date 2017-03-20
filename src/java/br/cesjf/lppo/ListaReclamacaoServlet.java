/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.cesjf.lppo;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
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
@WebServlet(name = "ListaReclamacaoServlet", urlPatterns = {"/lista.html"})
public class ListaReclamacaoServlet extends HttpServlet {

    

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        List<Reclamacao> reclamacoes = new ArrayList<>();
        
        try {
            //pegar dados do banco
            Class.forName("org.apache.derby.ClientDriver");
            Connection conexao = DriverManager.getConnection("jdbc:derby://localhost:1527/lppo-2017-1", "usuario" , "senha");
            Statement operacao = conexao.createStatement();
            ResultSet resultado = operacao.executeQuery("SELECT * FROM reclamacao");
            while(resultado.next()){
                Reclamacao r = new Reclamacao();
                r.setId(resultado.getLong("id"));
                r.setNome(resultado.getString("nome"));
                r.setEmail(resultado.getString("email"));
                r.setDescricao(resultado.getString("descricao"));
                r.setStatus(resultado.getInt("status"));
              
               
                reclamacoes.add(r);
                
            }
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ListaReclamacaoServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(ListaReclamacaoServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
      
        request.setAttribute("reclamacao", reclamacoes);
        request.getRequestDispatcher("WEB-INF/ListaReclamacao.jsp").forward(request, response);
    }

        

    
}
