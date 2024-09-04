package mx.ulsa.controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import mx.ulsa.modelo.Usuario;

import java.io.IOException;

public class LoginControlador extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginControlador() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		procesar(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	private void procesar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		String action = request.getPathInfo(); //Ingresar
		System.out.println("ACTION: " + action);
		switch(action) {
		case "/ingresar" -> ingresar(request,response);
		case "/Login" -> login(request,response);
		case "/logout" -> logout(request, response);
		
		default -> response.sendRedirect(request.getContextPath()+"/index.jsp");
		}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		
	}

	private Object logout(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		return null;
	}

	private void login(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		
		
		String email = "";
		Cookie[] cookies = request.getCookies();
		if(cookies!=null) {
			for(int i=0; i<cookies.length; i++) {
				Cookie unacookie = cookies[i];
				if(unacookie.getName().equals("correo")) {
					System.out.println("Correo de cookie");
					email = unacookie.getValue();
				}
			}
		}
		response.sendRedirect(request.getContextPath() + "/vista/login.jsp?email="+email);
		
	}

	private void ingresar(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		//String username = request.getParameter("username");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		
		System.out.println("Username: " + email + " Password: " + password);
		
		Usuario usuario = new Usuario(email, password);
		usuario.setEmail(email);
		usuario.setPassword(password);
		
		if (usuario.isValidoEmail()) {
			Cookie cookie = new Cookie("correo", email);
			cookie.setMaxAge(120);//Tiempo de vida de la cookie en el navegador
			response.addCookie(cookie);
			
			response.sendRedirect(request.getContextPath()+"/vista/privado/panel.jsp?email="+email +"&opcionPanel=panel");
		}else {
			request.setAttribute("errorMessage", "Usuario o contraseña incorrectos");
			request.getRequestDispatcher("vista/login.jsp").forward(request, response);
		}
	}

}
