/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.cesjf.lppo;

import java.io.IOException;
import java.io.PrintWriter;
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
        
      
    }

 

}
