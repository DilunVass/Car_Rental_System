package com.UserComment;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.User.UserDBUtil;


@WebServlet("/commentInsertSevlet")
public class commentInsertSevlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public commentInsertSevlet() {
        super();
    
    }
    
    


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String id = request.getParameter("id");
		String email = request.getParameter("email");
		String Name = request.getParameter("name");
		String comment = request.getParameter("comment");
		String date = request.getParameter("date");
		
		
		boolean isTrue;
		
	    isTrue = UserCommentDBUtil.commentInsert(id, email, Name, comment, date);
	    
	    if (isTrue == true) {
	    	RequestDispatcher dis = request.getRequestDispatcher("GamePage.jsp");
	    	dis.forward(request, response);
	    }else {
	    	RequestDispatcher dis2 = request.getRequestDispatcher("Unsuccess.jsp");
	    	dis2.forward(request, response);
	    }
	
	}

}
