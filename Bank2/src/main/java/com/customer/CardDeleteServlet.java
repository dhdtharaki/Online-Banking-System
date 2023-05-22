package com.customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CardDeleteServlet")
public class CardDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		String cnum = request.getParameter("cnum");
		boolean isSuccess;
		
		isSuccess = CardDBUtil.deleteCardDetails(cnum);
		
		if (isSuccess == true) {
			RequestDispatcher dis=request.getRequestDispatcher("insertcard.jsp");
			dis.forward(request, response);
		}
		else {
			System.out.println("<script type=\"text/javascript\">");
			System.out.println("alert('Somthing Happened!!! Update Your date is no success');");
			System.out.println("</script>");
			
			List <Card> carddetails = CardDBUtil.getCardDetails(cnum);
			request.setAttribute("carddetails", carddetails);
			RequestDispatcher dis=request.getRequestDispatcher("carddetails.jsp");
			dis.forward(request, response);
		}
	}

}
