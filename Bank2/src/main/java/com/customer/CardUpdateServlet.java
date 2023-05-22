package com.customer;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/CardUpdateServlet")
public class CardUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cnum = request.getParameter("cnum");
		String name = request.getParameter("name");
		String nic = request.getParameter("nic");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String salary = request.getParameter("salary");
		String ctype = request.getParameter("ctype");
		
		boolean isSuccess;
		
		isSuccess = CardDBUtil.updateCardDetails(cnum,name, nic,email, phone,salary, ctype);
		
		if (isSuccess == true) {
			
			List <Card> carddetails = CardDBUtil.getCardDetails(cnum);
			request.setAttribute("carddetails", carddetails);
			
			RequestDispatcher dis=request.getRequestDispatcher("carddetails.jsp");
			dis.forward(request, response);
		}
		else {
			System.out.println("<script type=\"text/javascript\">");
			System.out.println("alert('Update is unsuccessful!');");
			System.out.println("</script>");
			
			List <Card> carddetails = CardDBUtil.getCardDetails(cnum);
			request.setAttribute("carddetails", carddetails);
			
			RequestDispatcher dis=request.getRequestDispatcher("carddetails.jsp");
			dis.forward(request, response);
			
		}

	}

}
