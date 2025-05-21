package com.servlet.jsp.car;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/delete-car-by-id")
public class DeleteCar extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		int carId=Integer.parseInt(req.getParameter("carId"));
		Connection conn=null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/servlet_cardb?user=root&password=root123");
			PreparedStatement pst=conn.prepareStatement("DELETE FROM car_db WHERE carId=?");
			pst.setInt(1, carId);
			
			int rowsDeleted =pst.executeUpdate();
			
		resp.sendRedirect("display-all-cars");
			
			
			
		} catch (ClassNotFoundException | SQLException e) {
		
			e.printStackTrace();
		}
		finally {
			try {
				conn.close();
			} catch (SQLException e) {
			
				e.printStackTrace();
			}finally {
				if(conn!=null) {
					try {
						conn.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
				}
			}
		}
	}

}
