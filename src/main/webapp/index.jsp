<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>EMS</title>
    <%@ include file="header_footer.jsp" %>
    <style>
        body {
            background-color: #f8f9fa; /* Light background color */
            font-family: Arial, sans-serif; /* Set default font family */
            margin: 0; /* Remove default margin */
            padding: 0; /* Remove default padding */
        }

        .welcome-container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: calc(100vh - 56px); /* Full viewport height minus navbar height */
            margin-top: 56px; /* Account for navbar height */
            text-align: center; /* Center text */
            background-color: rgba(0, 0, 0, 0.5); /* Semi-transparent background */
            color: #fff; /* White text */
            padding: 20px; /* Add padding */
        }

        .welcome-container h1 {
            font-size: 2rem; /* Set font size */
        }

        .image-container {
            position: relative; /* Position relative to control absolute positioned child */
            height: calc(100vh - 56px); /* Full viewport height minus navbar height */
            width: 100%; /* Full width */
            overflow: hidden; /* Hide overflow */
            margin-top: 56px; /* Account for navbar height */
        }

        .image-container img {
            position: absolute; /* Absolute positioning */
            top: 0;
            left: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            object-fit: cover; /* Ensure the image covers the container */
        }

        .navbar {
            margin-bottom: 0; /* Remove bottom margin */
        }
    </style>
</head>
<body>
    <div class="container-fluid p-0">
        <%@ include file="navigation.jsp" %>
        <div class="image-container">
            <img src="image/online-staff-management-software.jpg" alt="Home Page Image">
            <div class="welcome-container">
                <h1>Welcome to the Employee Management System</h1>
            </div>
        </div>
    </div>
</body>
</html>
