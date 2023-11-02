package com.PaymentCard;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CardInsertSevlet")
public class CardInsertSevlet extends HttpServlet{
    private static final long serialVersionUID = 1L;

    public CardInsertSevlet() {
        super();

    }
	
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String cardNumber = request.getParameter("cardNumber");
        String cvv = request.getParameter("cvv");
        String expDate = request.getParameter("expDate");

        boolean isTrue;

        isTrue = CardDBUtil.cardInsert(id, name, cardNumber, cvv, expDate);

        if(isTrue == true){
            RequestDispatcher dis = request.getRequestDispatcher("Home.jsp");
            dis.forward(request, response);
        }

        else{

            RequestDispatcher dis = request.getRequestDispatcher("Unsuccess.jsp");
            dis.forward(request, response);
        }

    }

}
