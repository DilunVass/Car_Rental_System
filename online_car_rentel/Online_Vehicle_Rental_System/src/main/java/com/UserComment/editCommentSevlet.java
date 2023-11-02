package com.UserComment;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/editCommentSevlet")
public class editCommentSevlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public editCommentSevlet() {
        super();
  
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String name = request.getParameter("username");
		String comment = request.getParameter("comm");
		boolean isTrue;
		
		isTrue = UserCommentDBUtil.updateComment(id,name,comment);
		
		if (isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("HomePage.jsp");
			dis.forward(request, response);
		}
		
		else {
			RequestDispatcher dis =request.getRequestDispatcher("Unsuccess.jsp");
			dis.forward(request, response);
		}
	}

}
