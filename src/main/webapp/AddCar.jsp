<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Enter Car Details</title>
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
            margin: 0;
        }

        form {
            background-color: rgba(255, 255, 255, 0.9);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: 300px;
            text-align: center;
        }

        h1 {
            color: #333;
            margin-bottom: 20px;
        }

        input[type="text"],
        input[type="number"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            width: 100%;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
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
    <form action="add-car" method="post">
        <h1>Enter Car Details</h1>
        <input type="number" placeholder="Enter Id" name="carId" required> <br>
        <input type="text" placeholder="Enter Model" name="carModel" required> <br>
        <input type="text" placeholder="Enter Brand" name="carBrand" required> <br>
        <input type="text" placeholder="Enter Colour" name="carColour" required> <br>
        <input type="number" placeholder="Enter Price" name="carPrice" required> <br>
        <input type="submit" value="ADD">
         <h3><a href="index.jsp">Back to Dashboard</a></h3>
        
    </form>
    
    
</body>
</html>
