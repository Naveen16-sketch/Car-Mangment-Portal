<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Car Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            text-align: center;
            background-image: url('https://hips.hearstapps.com/hmg-prod/images/1-30-car-garage-1669131779.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            height: 100vh;
            color: #fff;
        }

        h1 {
            font-size: 3em;
            margin-top: 50px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
        }

        h2 a {
            display: inline-block;
            text-decoration: none;
            color: #fff;
            background-color: rgba(0, 0, 0, 0.5);
            padding: 10px 20px;
            margin: 15px;
            border-radius: 8px;
            transition: background-color 0.3s ease;
            font-size: 1.2em;
        }

        h2 a:hover {
            background-color: rgba(0, 0, 0, 0.8);
        }
    </style>
</head>
<body>
    <h1>Welcome to Car Dashboard</h1>
    <h2>
        <a href="AddCar.jsp">Add New Car</a>
    </h2>
    <h2>
        <a href="display-all-cars">Display Car Details</a>
    </h2>
</body>
</html>
