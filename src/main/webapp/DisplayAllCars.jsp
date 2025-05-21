<%@ page import="java.sql.ResultSet" %>
<%@ page import="com.mysql.cj.protocol.Resultset" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Car Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('https://hips.hearstapps.com/hmg-prod/images/1-30-car-garage-1669131779.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            height: 100vh;
            color: #fff;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        h1 {
            margin-top: 30px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
        }

        table {
            border-collapse: collapse;
            width: 80%;
            margin: 20px 0;
            background-color: rgba(255, 255, 255, 0.9);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            border-radius: 10px;
            overflow: hidden;
        }

        table th, table td {
            padding: 15px;
            text-align: center;
            border-bottom: 1px solid #ddd;
        }

        table th {
            background-color: #007bff;
            color: black;
        }

        table td {
            color: #000;
            background-color: white;
        }

        table tr:hover {
            background-color: #f1f1f1;
        }

        table tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        a {
            text-decoration: none;
            font-weight: bold;
        }

        /* Update Button */
        .update-btn {
            color: white;
            background-color: #007bff;
            padding: 5px 10px;
            border-radius: 5px;
            text-decoration: none;
            transition: background-color 0.3s ease;
        }

        .update-btn:hover {
            background-color: #0056b3;
        }

        /* Delete Button */
        .delete-btn {
            color: white;
            background-color: #dc3545;
            padding: 5px 10px;
            border-radius: 5px;
            text-decoration: none;
            transition: background-color 0.3s ease;
        }

        .delete-btn:hover {
            background-color: #c82333;
        }

        h3 a {
            color: black;
            background-color: #007bff;
            padding: 10px 20px;
            border-radius: 5px;
            text-decoration: none;
            transition: background-color 0.3s ease;
        }

        h3 a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h1>All Car Details</h1>
    <%
    ResultSet rs = (ResultSet) request.getAttribute("CarList");
    %>
    <table>
        <tr>
            <th>CarId</th>
            <th>CarModel</th>
            <th>CarBrand</th>
            <th>CarColour</th>
            <th>CarPrice</th>
            <th>Update</th>
            <th>Delete</th>
        </tr>
        <%
        while (rs.next()) {
        %>
        <tr>
            <td><%=rs.getInt(1)%></td>
            <td><%=rs.getString(2)%></td>
            <td><%=rs.getString(3)%></td>
            <td><%=rs.getString(4)%></td>
            <td><%=rs.getInt(5)%></td>
            <td><a class="update-btn" href="find-car-by-id?carId=<%=rs.getInt(1) %>">UPDATE</a></td>
            <td><a class="delete-btn" href="delete-car-by-id?carId=<%=rs.getInt(1) %>">DELETE</a></td>
        </tr>
        <%
        }
        %>
    </table>
    <h3><a href="index.jsp">Back to Dashboard</a></h3>
</body>
</html>
