<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Welcome to Spice Delight</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #fff8f0;
            font-family: 'Segoe UI', sans-serif;
        }

        .header {
            background-color: #d35400;
            color: white;
            padding: 20px 0;
            text-align: center;
            font-size: 32px;
            font-weight: bold;
        }

        .content {
            margin: 40px auto;
            max-width: 800px;
            text-align: center;
        }

        .content p {
            font-size: 18px;
            line-height: 1.8;
            color: #444;
        }

        .btn-group {
            margin-top: 30px;
        }

        .btn-custom {
            padding: 12px 25px;
            font-size: 18px;
            border-radius: 8px;
            margin: 10px;
        }

        .btn-menu {
            background-color: #27ae60;
            color: white;
        }

        .btn-menu:hover {
            background-color: #219150;
        }

        .btn-login {
            background-color: #2980b9;
            color: white;
        }

        .btn-login:hover {
            background-color: #206090;
        }
    </style>
</head>
<body>

    <div class="header">
        Spice Delight Restaurant
    </div>

    <div class="content">
        <p>
            Welcome to <strong>Spice Delight</strong> — where tradition meets taste! Our restaurant offers a wide variety 
            of delicious dishes made from fresh ingredients and authentic spices. Whether you're here for a family dinner 
            or a quick bite, we ensure a flavorful experience you won't forget.
        </p>

        <div class="btn-group">
            <a href="/viewmenu" class="btn btn-custom btn-menu">View Menu</a>
            <a href="/login" class="btn btn-custom btn-login">Admin Login</a>
        </div>
    </div>

</body>
</html>
