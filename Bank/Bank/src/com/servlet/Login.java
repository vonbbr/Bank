package com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.users.Bank;
import com.users.User;

import file.ReadFile;
import file.SaveFile;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		/*
		SaveFile save = new SaveFile();
		ReadFile read = new ReadFile();
		
		Bank bank = (Bank)read.read("bank", Bank.class);
		*/
		
		HttpSession session = request.getSession(true);
		
		Bank bank = (Bank) session.getAttribute("bank");
		
		if (bank == null){
			bank = new Bank();
		}
		
		User test = new User();
		
		test.setPassword("password");
		test.setStreet("street");
		test.setCity("city");
		test.setState("state");
		test.setFirstName("firstName");
		test.setLastName("lastName");
		test.setMiddleName("middleName");
		test.setEmail("email");
		test.setUsername("username");
		
		bank.addUser(test);
		
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		
		RequestDispatcher rs;
		
		
		if (bank.checkUserLogin(username, password)){
			session.setAttribute("user", bank.getUser(username, password));
			rs = request.getRequestDispatcher("account.jsp");
			rs.forward(request, response);
		} else {
			rs = request.getRequestDispatcher("index.jsp");
			rs.forward(request, response);
		}
		
		session.setAttribute("bank", bank);
		
	}

}
