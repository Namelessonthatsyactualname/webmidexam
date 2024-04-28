<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE-edge">
<meta name="viewport" content="width=device-width, intial-scale=1.0">
<title>AUCA | Dash</title>
<link rel="stylesheet" href="css/style.css"/>
<!--fav-icon-->
<link rel="shortcut icon" href="images/favicon.png"/>
<script src="asserts/script.js"></script>
</head>

<body>
   
    <section class="main" style="background-image: url(images/hero-bg.png);">
        
        <nav>
            <a href="adminDashboard.jsp" class="logo">
                <img src="images/logo.png" height="40px" />
            </a>
            <input class="menu-btn" type="checkbox" id="menu-btn"/>
            <label class="menu-icon" for="menu-btn">
                <span class="nav-icon"></span>
            </label>
            <ul class="menu" style="border-radius: 5px;">
                <li><a href="Report.jsp">Report</a></li>
                <li><a href="Result.jsp">Result</a></li>
                <li><a href="Login.jsp" class="active" onclick="document.getElementById('id01').style.display='block'" style="width:auto; border-radius: 5px; cursor: pointer;">Logout</a></li>
            </ul>
        </nav>
        <!--main-content-->
        <div class="home-content">
            
            <!--text-->
            <div class="home-text" >
                
                <h3 style="color: white; letter-spacing: 2px;">ADVENTIST UNIVERSITY OF CENTRAL AFRICA</h3>
                <h1 style="color: white;"> Administration Portal</h1>
            </div>
            <!--img-->
            <div class="home-img" style="width: 500px;">
                <img src="images/hat.png" width="500px" style="text-shadow: 20px 22px;"/>
            </div>
            
        </div>
    </section>
    
    <!--services----------------------->
    <section class="services">
        <!--heading----------->
        <div class="services-heading">
            <h2>SERVICES</h2>
        </div>
        <!--box-container----------------->
        <div class="box-container">
            <!--box-1-------->
            <div class="box">
                <img src="images/icon5.png">
                <font>Add New TEACHER</font>
                <!--btn--------->
                <a href="Teacher.jsp">Go</a>
            </div>
            <!--box-2-------->
            <div class="box">
                <img src="images/icon5.png">
                <font>Add New COURSES DEFINITION</font>
                
                <!--btn--------->
                <a href="CourseDefinition.jsp">Go</a>
            </div>
            <!--box-3-------->
            <div class="box">
                <img src="images/icon5.png">
                <font>Add New SEMESTER</font>
                
                <!--btn--------->
                <a href="Semester.jsp">Go</a>
            </div>
            <!--box-4-------->
            <div class="box">
                <img src="images/icon5.png">
                <font>Add New AcademicUnit</font>
                
                <!--btn--------->
                <a href="AcademicUnit.jsp">Go</a>
            </div>
            <!--box-5-------->
            <div class="box">
                <img src="images/icon5.png">
                <font>Add New Course</font>
                
                <!--btn--------->
                <a href="Course.jsp">Go</a>
            </div>
            <!--box-5-------->
            <div class="box">
                <img src="images/icon5.png">
                <font>Add New Student Course</font>
                
                <!--btn--------->
                <a href="StudentCourse.jsp">Go</a>
            </div>
            <!--box-5-------->
            <div class="box">
                <img src="images/icon5.png">
                <font>Edit Student Registration</font>
                
                <!--btn--------->
                <a href="StudentRegistrationAdmin.jsp">Go</a>
            </div>
        </div>
    </section>
    
    <!--footer------------->
    <footer>
        <p>Copyright (C) - 2023 | Developed By <a>JOSUE</a> </p>
    </footer>
    
</body>

</html>
