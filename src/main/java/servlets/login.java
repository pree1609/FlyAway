package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static boolean isLoggedIn = false;
	static String email;
	static String password;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out= response.getWriter();
		
		email = request.getParameter("email");
		password = request.getParameter("password");
		
		if(email.equals("admin@flyaway.com") && password.equals("admin")) {
			isLoggedIn = true;
			out.println("You have logged in!");
			response.sendRedirect("admin-home.jsp");
		}
		else {
			isLoggedIn = false;
			out.println("Login failed. Incorrect email or password.");
		}
		out.close();
	}

}
