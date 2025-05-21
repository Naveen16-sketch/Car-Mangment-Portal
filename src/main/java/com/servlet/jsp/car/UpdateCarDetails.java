package com.servlet.jsp.car;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/save-updated")
public class UpdateCarDetails extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int carId=Integer.parseInt(req.getParameter("carId"));
		String carModel=req.getParameter("carModel");
		String carBrand=req.getParameter("carBrand");
		String carColour=req.getParameter("carColour");
		int carPrice=Integer.parseInt(req.getParameter("carPrice"));
		
		Connection conn=null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/servlet_cardb?user=root&password=root123");
			PreparedStatement pst=conn.prepareStatement("UPDATE car_db SET carModel=?,carBrand=?,carColour=?,carPrice=? WHERE carId=? ");
		
			pst.setString(1, carModel);
			pst.setString(2, carBrand);
			pst.setString(3, carColour);
			pst.setInt(4, carPrice);
			pst.setInt(5, carId);
			
			pst.execute();
		
			
			resp.sendRedirect("display-all-cars");
		} catch (ClassNotFoundException | SQLException e) {
			
			e.printStackTrace();
		}
		finally {
			try {
				conn.close();
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
		}
		

	}

}
