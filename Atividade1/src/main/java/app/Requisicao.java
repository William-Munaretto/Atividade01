package app;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/requisicao")
public class Requisicao extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String metodo = req.getMethod();
		String uri = req.getRequestURI();
		String protocolo = req.getProtocol();
		
		req.setAttribute("Metodo", metodo);
		req.setAttribute("URI", uri);
		req.setAttribute("Protocolo", protocolo);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("index.jsp");
		
		dispatcher.forward(req, resp);
	}
		
}
