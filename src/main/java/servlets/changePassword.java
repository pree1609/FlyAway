package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/changePassword")
public class changePassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String newPassword = request.getParameter("passwordEntered");
		if (!login.isLoggedIn) {
			out.println("You must login first!");
		}
		else if (newPassword.equals("")) {
			out.println("Enter valid new password!");
		}
		else if (login.isLoggedIn && !newPassword.equals("")){
            login.password = newPassword;
            out.println("Password changed. New Password is "+login.password);
        }
        else {
            out.println("Sorry, Something went wrong");
        }
		out.close();
	}

}
