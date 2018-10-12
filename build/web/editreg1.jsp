<%-- 
    Document   : editreg1
    Created on : Sep 26, 2018, 2:39:09 AM
    Author     : GV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
     <title>::ReaderEnvi::</title>
    <!--<link href="css/jquery.bxslider.css" rel="stylesheet" type="text/css">-->
    <link href="style.css" rel="stylesheet" type="text/css">
    <!-- Start WOWSlider.com HEAD section -->
<link rel="stylesheet" type="text/css" href="engine1/style.css" />
<script type="text/javascript" src="engine1/jquery.js"></script>
<!-- End WOWSlider.com HEAD section -->
    <style>
        input[type=text], input[type=password], input[type=date], input[type=email]{
    width: 100%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;
}
        input[type=radio]{
            width: 10%;
            padding: 15px;
            margin: 5px 0 22px 0;
            background: #f1f1f1;
        }
        /* Add a background color when the inputs get focus */
        input[type=text]:focus, input[type=password]:focus {
    background-color: #ddd;
    outline: none;
        }
        .modal-content {
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 80%; /* Could be more or less, depending on screen size */
        }
        /* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    opacity: 0.9;
}

button:hover {
    opacity:1;
}
    </style>
    </head>
    <body>
    <div id="wrapper">
    <div id="header">
        <div id="subheader">
            <div class="container">
        <p>Gain Knowledge</p>
    <a href="#">About us</a>
    <a href="#">FAQ</a>
    <a href="#">Help</a>
    <a href="#">Contact Us</a>
    <a href="index.html">Home</a>          
        </div>
        </div>
        <!--==main header==-->
        <div id="main-header">
            <!--logo-->
            <div id="logo">
            <span id="ist" >Reader</span>
            <span id="iist" >Envi</span>
            </div>
            <!--search area-->
            <div id="search">
            <form action="">
                <input class="search-area" type="text" name="text" placeholder="search here">
                <input class="search-btn" type="submit" name="submit" value="search" style="margin-top: -72px;">
                </form>
            </div>
            <!--user menu-->
            <div id="user-menu">
            <li><a href="register.html">Register</a></li>
                <li><a href="login.html">Login</a></li>
            </div>
        </div>
        </div>
        <!--navigation bar-->
        <div id="navigation">
        <nav>
            <a href="accademics.html">Accademics</a>
            <a href="#">Coding</a>
            <a href="#">Motivational</a>
            <a href="#">Comics</a>
            </nav>
        </div>
        </div>
        <%@page import="database.UserDao,bean.User"%>
          <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  
<%  
String id=request.getParameter("id");  
User u=UserDao.getRecordById(Integer.parseInt(id));  

%>  
        <form class="model_content" action="edituser.jsp">
        <div class="container_register">
            <h1 style="text-align: center; margin-top: 150px; background: skyblue; color: green;">Register Here</h1>
            <p style="color: blue; font-size: 20px;">Please fill in this form to create an account.</p>
            <hr style="border: 1px solid black; margin-bottom: 25px;">
            <input type="hidden" name="id" value="<%=u.getId()%>"/>
            <label for="fname"><b>First Name</b></label>
            <input type="text"  name="faname" placeholder="Enter First Name" required value="<%=u.getfaname() %>"><br>
             <label for="lname"><b>Last Name</b></label>
                <input  name="laname" type="text" class="form-control" placeholder=" Enter Last Name" required value="<%=u.getlaname() %>"><br>
             <label for="email"><b>Email</b></label>
                <input  name="mail" type="email" class="form-control" placeholder="Enter E-mail" required value="<%=u.getmail() %>"><br>
             <label for="pwd"><b>Password</b></label>
                <input  name="pass" type="password" class="form-control" placeholder="Enter password" required value="<%=u.getpass() %>"><br>
             <label for="dob"><b>DOB</b></label>
                <input  name="dob" type="date" class="form-control" placeholder="Enter Date of Birth" required value="<%=u.getdob() %>"><br>
             <label for="address"><b>Address</b></label>
                <textarea name="addr" class="form-control" placeholder="Enter Address" rows="3" required  value="<%=u.getaddr() %>" style=" width: 100%;
                padding: 15px;
                margin: 5px 0 22px 0;
                display: inline-block;
                border: none;
                background: #f1f1f1;"></textarea><br>
             <label for="father"><b>Father Name</b></label>
                <input  name="fname" type="text" class="form-control" placeholder="Father Name" required value="<%=u.getfname() %>"><br>
             <label for="phone"><b>Mobile</b></label>
                <input  name="phn" type="text" class="form-control" placeholder="Enter Mobile number" required value="<%=u.getphn() %>"><br>
             <label for="course"><b>Enter Course</b></label>
                <select name="course" type="ddl" class="form-control" placeholder="Enter course" value="<%=u.getcourse() %>" style=" width: 100%;
                padding: 15px;
                margin: 5px 0 22px 0;
                display: inline-block;
                border: none;
                background: #f1f1f1;"> 
                    <option selected>B.Tech</option>
                    <option>M.Tech</option>
                    <option>MBA</option>
                    <option>B.Pharm</option>
                </select><br>
             <label for="branch"><b>Branch</b></label>
                <select name="branch" type="ddl" class="form-control" placeholder="Branch" value="<%=u.getbranch() %>" style=" width: 100%;
                padding: 15px;
                margin: 5px 0 22px 0;
                display: inline-block;
                border: none;
                background: #f1f1f1;">
                    <option selected>CSE</option>
                    <option>ECE</option>
                    <option>IT</option>
                    <option>EEE</option>
                    <option>MECH</option>
                    <option>CIVIL</option>
                </select><br>
             <label for="gender"><b>Gender</b></label>
                <input type="radio" name="gen" value="male" value="<%=u.getgen() %>">male
                <input type="radio" name="gen" value="female" value="<%=u.getgen() %>">female<br>
             <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>
            
            <label>
        <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
      </label><br>
                <input type="submit" class="button1" value="REGISTER" style="background-color: orange; width: 48%; border: none; padding: 14px 20px; color: white;">
                <input type="reset" class="button1" value="CANCEL" style="background-color: red; width: 50%; border: none; padding: 14px 20px; color: white;">  
            </div> 
        </form>
         
%>
</body>
</html>
