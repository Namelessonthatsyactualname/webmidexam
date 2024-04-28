<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>AUCA | Report</title>
    <link rel="stylesheet" href="css/style.css"/>
    <!--fav-icon-->
    <link rel="shortcut icon" href="images/favicon.png"/>
    <script src="asserts/script.js"></script>
</head>
<body>
    <section class="main">
        <nav>
            <a href="adminDashboard.jsp" class="logo">
                <img src="images/logo.png" height="40px" />
            </a>
            <input class="menu-btn" type="checkbox" id="menu-btn"/>
            <label class="menu-icon" for "menu-btn">
                <span class="nav-icon"></span>
            </label>
            <ul class="menu" style="border-radius: 5px;">
                <li><a href="index.jsp">Home</a></li>
                <li><a class="active" onclick="document.getElementById('id01').style.display='block'" style="width:auto; border-radius: 5px; cursor: pointer;">Login</a></li>
            </ul>
        </nav>
        
        <form action="report" method="post">
    <input type="hidden" name="action" value="fetchData" />
    <input type="submit" value="Fetch All Data" />
</form>
        <center><h4>Students</h4></center>
        <table>
            <thead>
                <tr>
                    <th>Reg No</th>
                    <th>Full Name</th>
                    <th>Date of Birth</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listStudents}" var="student">
                    <tr>
                        <td>${student.regno}</td>
                        <td>${student.fullname}</td>
                        <td>${student.dateofbirth}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <center><h4>Semester</h4></center>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Start Date</th>
                    <th>End Date</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listSemester}" var="semester">
                    <tr>
                        <td>${semester.id}</td>
                        <td>${semester.name}</td>
                        <td>${semester.startDate}</td>
                        <td>${semester.endDate}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <center><h4>AcademicUnit</h4></center>
        <table>
            <thead>
                <tr>
                    <th>Code</th>
                    <th>Academic Type</th>
                    <th>Academic Name</th>
                    <th>Parent Code</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listAcademicUnit}" var="academicunit">
                    <tr>
                        <td>${academicunit.code}</td>
                        <td>${academicunit.academicType}</td>
                        <td>${academicunit.name}</td>
                        <td>${academicunit.parentAcademic.code}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <center><h4>Teacher</h4></center>
<table>
    <thead>
        <tr>
            <th>Code</th>
            <th>Names</th>
            <th>Qualification</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${listTeacher}" var="teacher">
            <tr>
                <td>${teacher.code}</td>
                <td>${teacher.names}</td>
                <td>${teacher.qualification}</td>
            </tr>
        </c:forEach>
    </tbody>
</table>
<center><h4>CourseDefinition</h4></center>
<table>
    <thead>
        <tr>
            <th>Code</th>
            <th>Names</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${listCourseDefinition}" var="coursedefinition">
            <tr>
                <td>${coursedefinition.code}</td>
                <td>${coursedefinition.name}</td>
                <td>${coursedefinition.description}</td>
            </tr>
        </c:forEach>
    </tbody>
</table>
<center><h4>Course</h4></center>
<table>
    <thead>
        <tr>
            <th>Code</th>
            <th>AcademicUnit Code</th>
            <th>CourseDefinition Code</th>
            <th>Semester Id</th>
            <th>Teacher Code</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${listCourse}" var="course">
            <tr>
                <td>${course.code}</td>
                <td>${course.academicunit.code}</td>
                <td>${course.cousedefinition.code}</td>
                <td>${course.semester.id}</td>
                <td>${course.teacher.code}</td>
            </tr>
        </c:forEach>
    </tbody>
</table>
<center><h4>Student Course</h4></center>
<table>
    <thead>
        <tr>
            <th>ID</th>
            <th>Credits</th>
            <th>Results</th>
            <th>Course Code</th>
            <th>Student Registration</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${liststudentcourse}" var="studentcourse">
            <tr>
                <td>${studentcourse.id}</td>
                <td>${studentcourse.credits}</td>
                <td>${studentcourse.results}</td>
                <td>${studentcourse.course.code}</td>
                <td>${studentcourse.studentregistration.id}</td>
            </tr>
        </c:forEach>
    </tbody>
</table>

<center><h4>Student Registration</h4></center>
<table>
    <thead>
        <tr>
            <th>ID</th>
            <th>Registration Date</th>
            <th>Academic Unit Code</th>
            <th>Semester ID</th>
            <th>Student ID</th>
            <th>Status</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${listStudentRegistration}" var="studentregistration">
            <tr>
                <td>${studentregistration.id}</td>
                <td>${studentregistration.registrationDate}</td>
                <td>${studentregistration.academicunit.code}</td>
                <td>${studentregistration.semester.id}</td>
                <td>${studentregistration.regno.regno}</td> 
                <td>${studentregistration.status}</td>
            </tr>
        </c:forEach>
    </tbody>
</table>


    </section>
</body>
</html>
