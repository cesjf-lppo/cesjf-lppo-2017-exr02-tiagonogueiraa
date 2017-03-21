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
import java.sql.ResultSet;
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
@WebServlet(name = "EditaReclamacaoServlet", urlPatterns = {"/editaReclamacao"})
public class EditaReclamacaoServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Reclamacao rec = new Reclamacao();
        Long id = Long.parseLong(request.getParameter("id"));

        try {
            //Pegar os dados do banco
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection conexao = DriverManager.getConnection("jdbc:derby://localhost:1527/lppo-2017-1", "usuario", "senha");
            Statement operacao = conexao.createStatement();
            ResultSet resultado = operacao.executeQuery("SELECT * FROM reclamacao WHERE id=" + id);

            if (resultado.next()) {
                //contato = new Contato();
                rec.setId(resultado.getLong("id"));
                rec.setNome(resultado.getString("nome"));
                rec.setEmail(resultado.getString("email"));
                rec.setDescricao(resultado.getString("descricao"));
                rec.setStatus(resultado.getInt("status"));
            }

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(EditaReclamacaoServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(EditaReclamacaoServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

        request.setAttribute("reclamacao", rec);
        request.getRequestDispatcher("WEB-INF/EditaReclamacao.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            
            Reclamacao rec = new Reclamacao();
            
            rec.setId(Long.parseLong(request.getParameter("id")));
            rec.setNome(request.getParameter("nome"));
            rec.setEmail(request.getParameter("email"));
            rec.setDescricao(request.getParameter("descricao"));
            rec.setStatus(Integer.parseInt(request.getParameter("status")));
            
//                Contato contato = new Contato();
//        contato.setId(Long.parseLong(request.getParameter("id")));
//        contato.setNome(request.getParameter("nome"));
//        contato.setSobrenome(request.getParameter("sobrenome"));
//        contato.setTelefone(request.getParameter("telefone"));

    }

}
