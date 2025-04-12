<%@ page import="java.util.*, com.db.Employee, com.dao.EmployeeDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #f8f9fa, #e0e0e0);
            color: #333;
            margin: 0;
            padding: 0;
        }

        .dark {
            background: linear-gradient(to right, #232526, #414345);
            color: #f0f0f0;
        }

        .dark table, .dark th, .dark td {
            border-color: #777;
        }

        .dark a {
            color: white;
        }

        .dark a:hover {
            color: white;
        }

        .dark-mode-toggle {
            position: absolute;
            top: 20px;
            right: 20px;
        }

        .switch {
            position: relative;
            display: inline-block;
            width: 50px;
            height: 24px;
        }

        .switch input {
            opacity: 0;
            width: 0;
            height: 0;
        }

        .slider {
            position: absolute;
            cursor: pointer;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background-color: #ccc;
            transition: 0.4s;
            border-radius: 24px;
        }

        .slider:before {
            position: absolute;
            content: "";
            height: 18px;
            width: 18px;
            left: 4px;
            bottom: 3px;
            background-color: white;
            transition: 0.4s;
            border-radius: 50%;
        }

        input:checked + .slider {
            background-color: #2196F3;
        }

        input:checked + .slider:before {
            transform: translateX(26px);
        }

        h2 {
            text-align: center;
            margin-top: 30px;
        }

        .add-btn {
            display: block;
            margin: 20px auto;
            width: 200px;
            text-align: center;
            background: #007bff;
            padding: 10px;
            color: white;
            border-radius: 5px;
            text-decoration: none;
            transition: background-color 0.3s ease;
        }

        .add-btn:hover {
            background: #0056b3;
        }

        .dark .add-btn {
            background-color: #3399ff;
        }

        .dark .add-btn:hover {
            background-color: #267acc;
        }

        table {
            width: 80%;
            margin: 30px auto;
            border-collapse: collapse;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            background: white;
        }

        .dark table {
            background-color: #2c2c2c;
        }

        th, td {
            border: 1px solid #333;
            padding: 10px;
            text-align: center;
        }

        .edit-btn {
            background-color: #28a745; /* green */
            color: white;
            padding: 6px 12px;
            border-radius: 5px;
            text-decoration: none;
            margin-right: 5px;
            transition: background-color 0.3s ease;
        }

        .edit-btn:hover {
            background-color: #1e7e34;
        }

        .delete-btn {
            background-color: #dc3545;
            color: white;
            padding: 6px 12px;
            border-radius: 5px;
            text-decoration: none;
            transition: background-color 0.3s ease;
        }

        .delete-btn:hover {
            background-color: #a71d2a;
        }

        .dark .edit-btn {
            background-color: #4cd964;
        }

        .dark .edit-btn:hover {
            background-color: #3ac65c;
        }

        .dark .delete-btn {
            background-color: #ff4d4d;
        }

        .dark .delete-btn:hover {
            background-color: #cc0000;
        }
    </style>
    <script>
        window.onload = () => {
            const isDark = localStorage.getItem('dark-mode') === 'true';
            document.body.classList.toggle('dark', isDark);
            document.getElementById('modeToggle').checked = isDark;
        };

        function toggleDarkMode() {
            const enabled = document.getElementById('modeToggle').checked;
            document.body.classList.toggle('dark', enabled);
            localStorage.setItem('dark-mode', enabled);
        }
    </script>
</head>
<body>
    <div class="dark-mode-toggle">
        <label class="switch">
            <input type="checkbox" id="modeToggle" onchange="toggleDarkMode()">
            <span class="slider"></span>
        </label>
    </div>

    <h2>Student List</h2>
    <a href="add.jsp" class="add-btn">Add New Student</a>

    <table>
        <tr>
            <th>ID</th><th>Name</th><th>Email</th><th>Department</th><th>Actions</th>
        </tr>
        <%
            List<Employee> list = EmployeeDAO.getAllEmployees();
            for(Employee e : list){
        %>
        <tr>
            <td><%= e.getId() %></td>
            <td><%= e.getName() %></td>
            <td><%= e.getEmail() %></td>
            <td><%= e.getDepartment() %></td>
            <td>
                <a href="edit.jsp?id=<%= e.getId() %>" class="edit-btn">Edit</a>
                <a href="DeleteEmployeeServlet?id=<%= e.getId() %>" class="delete-btn" onclick="return confirm('Are you sure?')">Delete</a>
            </td>
        </tr>
        <% } %>
    </table>
</body>
</html>
