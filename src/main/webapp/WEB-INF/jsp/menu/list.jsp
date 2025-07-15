<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.RestaurentMenuMgt.model.MenuItem" %>
<html>
<head>
    <title>Menu Items</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa;
        }

        .container {
            background: #ffffff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
            margin-top: 50px;
        }

        h2 {
            margin-bottom: 25px;
            font-weight: bold;
            color: #343a40;
        }

        .btn + .btn {
            margin-left: 5px;
        }

        table th, table td {
            vertical-align: middle;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Menu Items</h2>
    <a href="/menu/create" class="btn btn-primary mb-3">Add New Item</a>
    <table class="table table-bordered table-striped">
        <thead class="thead-dark">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Price ($)</th>
            <th>Category</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <%
            List<MenuItem> menuItems = (List<MenuItem>) request.getAttribute("menuItems");
            if (menuItems != null && !menuItems.isEmpty()) {
                for (MenuItem item : menuItems) {
        %>
        <tr>
            <td><%= item.getId() %></td>
            <td><%= item.getName() %></td>
            <td>$<%= item.getPrice() %></td>
            <td><%= item.getCategory() %></td>
            <td>
                <a href="/menu/view/<%= item.getId() %>" class="btn btn-sm btn-info">View</a>
                <a href="/menu/edit/<%= item.getId() %>" class="btn btn-sm btn-warning">Edit</a>
                <a href="/menu/delete/<%= item.getId() %>" class="btn btn-sm btn-danger"
                   onclick="return confirm('Are you sure you want to delete this item?');">Delete</a>
            </td>
        </tr>
        <%
                }
            } else {
        %>
        <tr>
            <td colspan="5" class="text-center text-muted">No menu items available.</td>
        </tr>
        <%
            }
        %>
        </tbody>
    </table>
</div>
</body>
</html>
