package com.UserComment;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/deleteuserServelet")
public class deleteCommentSevlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public deleteCommentSevlet() {
        super();
       
    }

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			String id = request.getParameter("id");
			boolean isTrue;
			
			isTrue = UserCommentDBUtil.deleteComment(id);
			
			if (isTrue == true) {
				RequestDispatcher dis = request.getRequestDispatcher("GamePage.jsp");
				dis.forward(request, response);
			}
			
			else {
				
				
				RequestDispatcher dis =request.getRequestDispatcher("Unsuccess.jsp");
				dis.forward(request, response);
			}
	}

}
