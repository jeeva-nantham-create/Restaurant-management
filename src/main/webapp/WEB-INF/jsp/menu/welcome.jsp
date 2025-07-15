<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Welcome</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa;
        }

        .card {
            border-radius: 12px;
            box-shadow: 0 4px 20px rgba(0,0,0,0.1);
        }

        .card-header {
            background-color: #007bff;
            color: #fff;
            font-weight: bold;
            font-size: 20px;
        }

        .card-body {
            font-size: 16px;
        }

        .btn {
            margin-top: 10px;
            margin-right: 10px;
        }

        h3 {
            margin-bottom: 0;
        }
    </style>
</head>
<body>
<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header text-center">
                    <h3>Welcome to Restaurant Menu Management</h3>
                </div>
                <div class="card-body text-center">
                    <%
                        java.security.Principal user = request.getUserPrincipal();
                        if (user != null) {
                    %>
                        <p class="lead">
                            Successfully logged in as: <strong><%= user.getName() %></strong>
                        </p>
                    <%
                        } else {
                    %>
                        <p class="text-danger">You are not logged in.</p>
                    <%
                        }
                    %>

                    <a href="/menu" class="btn btn-primary">Manage Menu</a>
                    <a href="/logout" class="btn btn-secondary">Logout</a>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
