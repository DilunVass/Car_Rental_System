package com.ReqVehicle;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/updateReqSevlet")
public class updateReqSevlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public updateReqSevlet() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String reqId = request.getParameter("id");
            String vehicleId = request.getParameter("vehicleId");
            String vehicleType = request.getParameter("vehicleType");
            String NoOfDays = request.getParameter("NoOfDays");
            String ScheduleDate = request.getParameter("ScheduleDate");

            boolean isTrue;

            isTrue = reqVehicleDBUtil.updateReq(reqId, vehicleId, vehicleType, NoOfDays, ScheduleDate);

            if(isTrue == true) {
                RequestDispatcher dis = request.getRequestDispatcher("Home.jsp");
                dis.forward(request, response);
            } else {
                RequestDispatcher dis2 = request.getRequestDispatcher("Unsuccess.jsp");
                dis2.forward(request, response);
            }

        } catch(Exception e) {
            e.printStackTrace();
        }
    }

}
