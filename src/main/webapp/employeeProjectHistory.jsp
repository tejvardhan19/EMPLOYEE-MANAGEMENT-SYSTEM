<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Project History</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        html, body {
            height: 100%;
            margin: 0;
        }
        body {
            font-family: Arial, sans-serif;
            background-image: url('image/employeeprojecthistory.jpg'); /* Replace with the path to your image */
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
            padding: 20px;
        }
        .container {
            background: rgba(255, 255, 255, 0.9); /* White background with some transparency */
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 800px;
            margin: 20px auto; /* Center horizontally with some margin on top */
        }
        h1 {
            text-align: center;
            color: #333;
        }
        .table {
            margin-top: 20px;
        }
        .table thead th {
            background-color: #007bff;
            color: #fff;
        }
        .table tbody tr:nth-child(odd) {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Project History for Employee</h1>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>Project ID</th>
                    <th>Project Name</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="pa" items="${projectAssignments}">
                    <tr>
                        <td>${pa.projectId}</td>
                        <td>${pa.projectName}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>
