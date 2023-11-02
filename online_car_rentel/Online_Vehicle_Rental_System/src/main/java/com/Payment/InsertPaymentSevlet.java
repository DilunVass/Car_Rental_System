package com.Payment;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/InsertPaymentSevlet")
public class InsertPaymentSevlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public InsertPaymentSevlet() {
        super();

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String cardid = request.getParameter("cardid");
        String userid = request.getParameter("userid");
        String vehicleid = request.getParameter("vehicleid");
        String rentalid = request.getParameter("rentalid");
        String date = request.getParameter("date");
        String amount = request.getParameter("amount");

        boolean isTrue;

        isTrue = PaymentDBUtil.paymentInsert(cardid, userid, vehicleid,rentalid, date, amount);

        if (isTrue == true) {
            RequestDispatcher dis = request.getRequestDispatcher("Home.jsp");
            dis.forward(request, response);
        }

        else {

            RequestDispatcher dis = request.getRequestDispatcher("Unsuccess.jsp");
            dis.forward(request, response);
        }

    }

}
