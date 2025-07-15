<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Edit Menu Item</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f0f2f5;
        }

        .container {
            background: #ffffff;
            padding: 30px;
            margin-top: 50px;
            border-radius: 12px;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
        }

        h2 {
            margin-bottom: 30px;
            color: #333;
            font-weight: bold;
        }

        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
        }

        .btn-secondary {
            margin-left: 10px;
        }

        label {
            font-weight: 500;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Edit Menu Item</h2>
    <form method="post" action="/menu/update" class="needs-validation" novalidate>

        <!-- Hidden ID Field -->
        <input type="hidden" name="id" value="${menuItem.id}"/>

        <div class="form-group">
            <label for="name">Name</label>
            <input type="text" class="form-control" name="name" id="name" value="${menuItem.name}" required />
            <div class="invalid-feedback">Please provide a name</div>
        </div>

        <div class="form-group">
            <label for="description">Description</label>
            <textarea class="form-control" name="description" id="description" rows="3" required>${menuItem.description}</textarea>
            <div class="invalid-feedback">Please provide a description</div>
        </div>

        <div class="form-group">
            <label for="price">Price ($)</label>
            <input type="number" class="form-control" name="price" id="price" step="0.01" min="0" value="${menuItem.price}" required />
            <div class="invalid-feedback">Please provide a valid price</div>
        </div>

        <div class="form-group">
            <label for="category">Category</label>
            <select name="category" id="category" class="form-control" required>
                <option value="">-- Select Category --</option>
                <option value="Appetizer" ${menuItem.category == 'Appetizer' ? 'selected' : ''}>Appetizer</option>
                <option value="Main Course" ${menuItem.category == 'Main Course' ? 'selected' : ''}>Main Course</option>
                <option value="Dessert" ${menuItem.category == 'Dessert' ? 'selected' : ''}>Dessert</option>
                <option value="Beverage" ${menuItem.category == 'Beverage' ? 'selected' : ''}>Beverage</option>
            </select>
            <div class="invalid-feedback">Please select a category</div>
        </div>

        <div class="form-group form-check">
            <input type="checkbox" class="form-check-input" name="available" id="availableCheck"
                   ${menuItem.available ? 'checked' : ''} />
            <label class="form-check-label" for="availableCheck">Available</label>
        </div>

        <button type="submit" class="btn btn-primary">Update Item</button>
        <a href="/menu" class="btn btn-secondary">Cancel</a>
    </form>
</div>

<script>
    // Bootstrap validation
    (function () {
        'use strict';
        window.addEventListener('load', function () {
            var forms = document.getElementsByClassName('needs-validation');
            Array.prototype.forEach.call(forms, function (form) {
                form.addEventListener('submit', function (event) {
                    if (!form.checkValidity()) {
                        event.preventDefault();
                        event.stopPropagation();
                    }
                    form.classList.add('was-validated');
                }, false);
            });
        }, false);
    })();
</script>
</body>
</html>
