<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create Menu Item</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa;
        }

        .container {
            background: #fff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
        }

        h2 {
            margin-bottom: 30px;
            font-weight: bold;
            color: #343a40;
        }

        label {
            font-weight: 500;
        }
    </style>
</head>
<body>
<div class="container mt-5">
    <h2>Create New Menu Item</h2>

    <form method="post" action="/menu/create" class="needs-validation" novalidate>
        <div class="form-group">
            <label for="name">Name</label>
            <input type="text" class="form-control" name="name" id="name" required />
        </div>

        <div class="form-group">
            <label for="description">Description</label>
            <textarea class="form-control" name="description" id="description" rows="3" required></textarea>
        </div>

        <div class="form-group">
            <label for="price">Price ($)</label>
            <input type="number" class="form-control" name="price" id="price" step="0.01" min="0" required />
        </div>

        <div class="form-group">
            <label for="category">Category</label>
            <select name="category" id="category" class="form-control" required>
                <option value="">-- Select Category --</option>
                <option value="Appetizer">Appetizer</option>
                <option value="Main Course">Main Course</option>
                <option value="Dessert">Dessert</option>
                <option value="Beverage">Beverage</option>
            </select>
        </div>

        <div class="form-group form-check">
            <input type="checkbox" class="form-check-input" name="available" id="available" />
            <label class="form-check-label" for="available">Available</label>
        </div>

        <button type="submit" class="btn btn-primary">Create Item</button>
        <a href="/menu" class="btn btn-secondary">Cancel</a>
    </form>
</div>
</body>
</html>
