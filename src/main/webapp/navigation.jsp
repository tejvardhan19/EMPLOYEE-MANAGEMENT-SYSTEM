<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Management System</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

    <style>
        /* Navbar background color */
        .navbarbackground {
            background-color: #343a40; /* Dark gray color */
        }

        /* Navbar brand and link color */
        .navbar-brand, .navbar-nav .nav-link {
            color: #ffffff !important; /* White text */
        }

        /* Navbar brand and link color on hover */
        .navbar-brand:hover, .navbar-nav .nav-link:hover {
            color: #adb5bd !important; /* Light gray color on hover */
        }

        /* Search button color */
        .btn-outline-success {
            border-color: #28a745; /* Green border */
            color: #28a745; /* Green text */
        }

        /* Search button color on hover */
        .btn-outline-success:hover {
            background-color: #28a745; /* Green background on hover */
            color: #fff; /* White text on hover */
        }

        /* Navbar collapse icon color */
        .navbar-toggler {
            border-color: #ffffff; /* White border */
        }

        .navbar-toggler-icon {
            background-image: url("data:image/svg+xml,%3Csvg viewBox='0 0 30 30' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath stroke='rgba%28255, 255, 255, 0.5%29' stroke-width='2' stroke-linecap='round' stroke-miterlimit='10' d='M4 7h22M4 15h22M4 23h22'/ %3E%3C/svg%3E");
        }

        /* Container margin */
        .container {
            margin-top: 20px;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark navbarbackground">
    <a class="navbar-brand" href="#">Employee Management System</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="addemployee.jsp">Add Employee</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="displayemployee.jsp">Display All</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="addProjectAssignment.jsp">Add Project Assignment</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="login.jsp">Login</a>
            </li>
        </ul>
        <form class="form-inline my-2 my-lg-0" action="SearchServlet" method="get">
            <input class="form-control mr-sm-2" type="search" name="eid" placeholder="Enter Employee ID" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
    </div>
</nav>

<c:if test="${param.error == 'noId'}">
    <div class="alert alert-danger mt-4" role="alert">
        Please enter an Employee ID.
    </div>
</c:if>

<c:if test="${param.error == 'noEmployeeFound'}">
    <div class="alert alert-danger mt-4" role="alert">
        No employee found with the given ID.
    </div>
</c:if>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
