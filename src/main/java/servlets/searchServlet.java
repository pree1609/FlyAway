package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.search;


@WebServlet("/searchServlet")
public class searchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		search.date =  request.getParameter("date");
		search.source = request.getParameter("source");
		search.destination =  request.getParameter("destination");
		search.persons = Integer.parseInt(request.getParameter("persons"));
		
		if (search.date.equals("")) {
            PrintWriter out = response.getWriter();
            out.println("Please enter a valid date");
        }
        else {
            search.day = getDay(search.date);
            response.sendRedirect("search-results.jsp");
        }
    }

    public String getDay(String dateInp) {
        LocalDate dt = LocalDate.parse(dateInp);
        return dt.getDayOfWeek().toString();
    }
		
}


