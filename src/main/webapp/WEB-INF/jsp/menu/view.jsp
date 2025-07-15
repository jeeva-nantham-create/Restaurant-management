<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="com.example.RestaurentMenuMgt.model.MenuItem" %>
<%
    MenuItem menuItem = (MenuItem) request.getAttribute("menuItem");
%>
<html>
<head>
    <title>Menu Item Details</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f0f2f5;
        }
        .container {
            margin-top: 60px;
        }
        .card {
            border-radius: 12px;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
        }
        .card-header {
            background-color: #007bff;
            color: white;
            font-weight: bold;
        }
        .btn + .btn {
            margin-left: 10px;
        }
        .img-fluid {
            max-height: 200px;
            object-fit: cover;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="card">
        <div class="card-header">
            <h3><%= menuItem.getName() %></h3>
        </div>
        <div class="card-body">
            <div class="row">
                <div class="col-md-8">
                    <p><strong>Description:</strong> <%= menuItem.getDescription() %></p>
                    <p><strong>Price:</strong> $<%= menuItem.getPrice() %></p>
                    <p><strong>Category:</strong> <%= menuItem.getCategory() %></p>
                    <p><strong>Status:</strong>
                        <span class="<%= menuItem.isAvailable() ? "text-success" : "text-danger" %>">
                            <%= menuItem.isAvailable() ? "Available" : "Not Available" %>
                        </span>
                    </p>
                </div>
                <div class="col-md-4 text-center">
                    <img src="https://picsum.photos/seed/<%= menuItem.getId() %>/300/200.jpg" class="img-fluid rounded" alt="Menu item image">
                </div>
            </div>
        </div>
        <div class="card-footer d-flex flex-wrap">
            <a href="/menu" class="btn btn-secondary">Back to Menu</a>
            <a href="/menu/edit/<%= menuItem.getId() %>" class="btn btn-warning">Edit Item</a>
            <a href="/menu/delete/<%= menuItem.getId() %>" class="btn btn-danger"
               onclick="return confirm('Are you sure you want to delete this item?')">Delete Item</a>
            <a href="/admin/home" class="btn btn-info ml-auto">Back to Admin Home</a>
        </div>
    </div>
</div>
</body>
</html>
