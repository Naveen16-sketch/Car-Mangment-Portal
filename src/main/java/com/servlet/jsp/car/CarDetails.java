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

@WebServlet("/add-car")
public class CarDetails extends HttpServlet{
	
	@Override
	//Servlet to fetch data from frontend
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//parseInt method present in integer wrapper class
		int carId=Integer.parseInt(req.getParameter("carId"));
		//req from font end
		String carModel=req.getParameter("carModel");
		String carBrand=req.getParameter("carBrand");
		String carColour=req.getParameter("carColour");
		int carPrice=Integer.parseInt(req.getParameter("carPrice"));
		
		
		//JDBC LOGIC
		Connection conn=null;
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/servlet_cardb?user=root&password=root123");
			PreparedStatement pst=conn.prepareStatement("INSERT INTO car_db VALUES(?,?,?,?,?)");
			pst.setInt(1, carId);
			pst.setString(2, carModel);
			pst.setString(3, carBrand);
			pst.setString(4, carColour);
			pst.setInt(5, carPrice);
			
			pst.execute();
			
			resp.sendRedirect("index.jsp");
			
		} catch (ClassNotFoundException | SQLException e) {
		
			e.printStackTrace();
		}
		finally {
			if(conn!=null)
				try {
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}


	

		
		
	}

}
