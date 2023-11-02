package com.User;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/userUpdateSevlet")
public class userUpdateSevlet extends HttpServlet{
    private static final long serialVersionUID = 1L;

    public userUpdateSevlet() {
        super();
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String name = request.getParameter("username");
		String email = request.getParameter("email");
        String pass = request.getParameter("password");
        String dob = request.getParameter("dob");
        String gender = request.getParameter("gender");
        String country = request.getParameter("country");
		boolean isTrue;
		
		isTrue = UserDBUtil.updateUser(id,name,email,pass,dob,gender,country);
		
		if (isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("Home.jsp");
			dis.forward(request, response);
		}
		
		else {
			RequestDispatcher dis =request.getRequestDispatcher("Unsuccess.jsp");
			dis.forward(request, response);
		}
	}

}
