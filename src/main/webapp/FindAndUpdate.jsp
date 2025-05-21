<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.cj.protocol.Resultset"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Car Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('https://hips.hearstapps.com/hmg-prod/images/1-30-car-garage-1669131779.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            color: #fff;
        }

        form {
            background-color: rgba(0, 0, 0, 0.6);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5);
            width: 300px;
        }

        h1 {
            text-align: center;
            color: #fff;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
        }

        input[type="text"],
        input[type="number"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: none;
            border-radius: 5px;
            box-sizing: border-box;
        }

        input[type="text"]:focus,
        input[type="number"]:focus {
            outline: none;
            border: 2px solid #007bff;
        }

        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-weight: bold;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        input[readonly] {
            background-color: #ccc;
            cursor: not-allowed;
        }
    </style>
</head>
<body>
    <%
        ResultSet rs = (ResultSet) request.getAttribute("carData");
        rs.next();
    %>

    <h1>Update Car Details</h1>

    <form action="save-updated" method="post">
        <input type="number" value="<%=rs.getInt(1)%>" name="carId" readonly="readonly">
        <input type="text" value="<%=rs.getString(2)%>" name="carModel">
        <input type="text" value="<%=rs.getString(3)%>" name="carBrand">
        <input type="text" value="<%=rs.getString(4)%>" name="carColour">
        <input type="number" value="<%=rs.getInt(5)%>" name="carPrice">
        <input type="submit" value="UPDATE">
    </form>
</body>
</html>
