package com.UserComment;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import com.User.DBConnection;

public class UserCommentDBUtil {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static boolean commentInsert(String id,String email,String name,String comment,String date) {
		
		
		boolean isSuccess = false;
		
		try {

			con = DBConnection.getConnection();
			stmt = con.createStatement();
			
			String sql ="insert into gamecomment values (0,'"+comment+"', '"+email+"', '"+name+"', '"+date+"', 'null','"+id+"')";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}else {
				
			    isSuccess = false;
			    
				}
			
	    }
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
		}
	
	public static boolean updateComment(String id, String name, String comment) {
		boolean isSuccess = false;
		
		int comId = Integer.parseInt(id);
		
		try {
			
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			
			String sql = "update gamecomment set Username='"+name+"', comment='"+comment+"' where comId='"+id+"'";
			
            int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}else {
				
			    isSuccess = false;
			    
				}
			}
		catch(Exception e) {
			
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}
	
	
	
	public static boolean deleteComment(String id) {
		boolean isSuccess = false;
	
		
		int comId = Integer.parseInt(id);
		
		try {
			
			 con = DBConnection.getConnection();
			 stmt = con.createStatement();
			 String sql = "delete from gamecomment where comId='"+comId+"'";
			 
			 int rs = stmt.executeUpdate(sql);
			 
			 if(rs > 0) {
					isSuccess = true;
				}else {
					
				    isSuccess = false;    
			   }
		
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess ;	
		
	}
	

}
