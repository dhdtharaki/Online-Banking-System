package com.customer;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/CardInsertServlet")
public class CardInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out =response.getWriter();
		response.setContentType("text/html");
		
		String name = request.getParameter("name");
		String nic = request.getParameter("nic");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String salary = request.getParameter("salary");
		String ctype = request.getParameter("ctype");
		
		double Salary=Double.parseDouble(salary);
		
		boolean isSuccess;
		
		isSuccess = CardDBUtil.insertCardDetails(name, nic,email, phone,Salary, ctype);
		
		if (isSuccess == true) {
			List<Card> carddetails=CardDBUtil.display(nic);
			request.setAttribute("carddetails",carddetails);
			
			RequestDispatcher dis=request.getRequestDispatcher("carddetails.jsp");
			dis.forward(request, response);
		}
		else {
			System.out.println("<script type=\"text/javascript\">");
			System.out.println("alert('Error occured');");
			System.out.println("</script>");
			response.sendRedirect("insertcard.jsp");
	}
	}}

