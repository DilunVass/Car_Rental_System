package com.PaymentCard;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class CardDBUtil {

    private static Connection con = null;
    private static Statement stmt = null;
    private static ResultSet rs = null;

    public static boolean cardInsert(String id, String name, String cardNumber, String cvv, String expDate){
        boolean isSuccess = false;

        try{
            con = DBConnection.getConnection();
            stmt = con.createStatement();
            String sql = "insert into cards values ( 0 ,'"+id+"','"+name+"','"+cardNumber+"','"+cvv+"','"+expDate+"')";

            int rs = stmt.executeUpdate(sql);

            if(rs > 0){
                isSuccess = true;
            }else{
                isSuccess = false;
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return isSuccess;

    }

    public static boolean updateCard(String id, String name, String cardNumber, String cvv, String expDate){
        boolean isSuccess = false;

        try{
            con = DBConnection.getConnection();
            stmt = con.createStatement();
            String sql = "update cards set name='"+name+"', cardNumber='"+cardNumber+"', cvv='"+cvv+"', expDate='"+expDate+"' where idcard='"+id+"'";

            int rs = stmt.executeUpdate(sql);

            if(rs > 0){
                isSuccess = true;
            }else{
                isSuccess = false;
            }

        }catch(Exception e){
            e.printStackTrace();
        }

        return isSuccess;
    }

    public static boolean deleleCard(String id) {
		
		int convId = Integer.parseInt(id);
		
		try {
			
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			
			String sql = "delete from cards where idcard='"+convId+"'";
			
			int r = stmt.executeUpdate(sql);
			
			if(r > 0) {
				return true;
			}else {
				return false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return false;
	}

}
