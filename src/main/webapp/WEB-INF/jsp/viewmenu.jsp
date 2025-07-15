<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.RestaurentMenuMgt.model.MenuItem" %>

<html>
<head>
    <title>Restaurant Menu</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f0f2f5;
        }

        .container {
            margin-top: 50px;
        }

        h2 {
            text-align: center;
            margin-bottom: 30px;
            font-weight: bold;
            color: #333;
        }

        .menu-card {
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 10px;
            padding: 20px;
            margin-bottom: 20px;
            box-shadow: 0 2px 6px rgba(0,0,0,0.1);
        }

        .menu-card h4 {
            margin-bottom: 10px;
            color: #2c3e50;
        }

        .price {
            font-weight: bold;
            color: #27ae60;
        }

        .category {
            font-style: italic;
            color: #777;
        }

        .status {
            margin-top: 5px;
            font-size: 14px;
        }

        .available {
            color: #007bff;
        }

        .not-available {
            color: #e74c3c;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Our Menu</h2>

    <%
        List<MenuItem> menuList = (List<MenuItem>) request.getAttribute("menuList");
        if (menuList != null) {
            for (MenuItem item : menuList) {
    %>
        <div class="menu-card">
            <h4><%= item.getName() %></h4>
            <p><%= item.getDescription() %></p>
            <p class="price">Price: ₹ <%= item.getPrice() %></p>
            <p class="category">Category: <%= item.getCategory() %></p>
            <p class="status <%= item.isAvailable() ? "available" : "not-available" %>">
                <%= item.isAvailable() ? "Available" : "Not Available" %>
            </p>
        </div>
    <%
            }
        } else {
    %>
        <p class="text-center text-danger">No menu items found.</p>
    <%
        }
    %>
</div>
</body>
</html>
