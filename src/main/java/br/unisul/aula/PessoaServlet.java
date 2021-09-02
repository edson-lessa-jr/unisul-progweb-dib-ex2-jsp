package br.unisul.aula;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "PessoaServlet", value = "/cadastroPessoa")
public class PessoaServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {
        String nome = request.getParameter("somenteNome");
        String idade = request.getParameter("nrIdade");
        Pessoa pessoa = new Pessoa(nome, Integer.parseInt(idade));

        Auxiliar.pessoaList.add(pessoa);
        response.getWriter().println(pessoa);
    }
}
