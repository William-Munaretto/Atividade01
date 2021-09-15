package app;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/cabecalhos")
public class Cabecalhos extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		String host = req.getHeader("host");
		String navegador = req.getHeader("user-agent");
		String codigo = req.getHeader("accept-encoding");
		String lingua = req.getHeader("accept-language");
		
		req.setAttribute("Host", host);
		req.setAttribute("Navegador", navegador);
		req.setAttribute("Codigo", codigo);
		req.setAttribute("Lingua", lingua);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("index.jsp");
		
		dispatcher.forward(req, resp);
		
	}
	
}
