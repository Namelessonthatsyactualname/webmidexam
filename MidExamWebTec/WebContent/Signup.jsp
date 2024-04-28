<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AUCA | Signup</title>
<link rel="stylesheet" href="css/style.css"/>
<script src="asserts/script.js"></script>
</head>
<body>
<section class="main">
        
        <nav>
            <a href="index.html" class="logo">
                <img src="images/logo.png" height="40px" />
            </a>
            <input class="menu-btn" type="checkbox" id="menu-btn"/>
            <label class="menu-icon" for="menu-btn">
                <span class="nav-icon"></span>
            </label>
            <ul class="menu" style="border-radius: 5px;">
                <li><a href="index.html">Home</a></li>
                <li><a href="Login.html" class="active" onclick="document.getElementById('id01').style.display='block'" style="width:auto; border-radius: 5px; cursor: pointer;">Login</a></li>
            </ul>
        </nav>
		
        <form action="users" method="post">
            <h2>Signup</h2>
            <div class="form-group fullname">
              <label for="fullname">Full Name</label>
              <input type="text" id="fullname" placeholder="Enter your full name" name="fullname">
            </div>
            <div class="form-group student_id">
              <label for="email">ID Number</label>
              <input type="text" id="studentid" placeholder="Enter your id number" name="regno">
            </div>
            <div class="form-group password">
              <label for="password">Password</label>
              <i id="pass-toggle-btn" class="fas fa-eye"></i>
              <input type="password" id="password" placeholder="Enter your password" name="password">
            </div>
            <br />
            <div class="form-group submit-btn">
              <input type="submit" value="Signup">
            </div>
            <div>
              <a href="Login.jsp" class="info" style="color: #fff;">I already have an account</a>
            </div>
          </form>

    </section>
    <!--footer------------->
    <footer>
        <p>Copyright (C) - 2023 | Developed By <a>Josue</a> </p>
    </footer>
</body>
</html>