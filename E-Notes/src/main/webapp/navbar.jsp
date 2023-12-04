<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Navbar</title>
<style>

/* Navbar styles */
body {
    margin: 0;
    font-family: Arial, sans-serif;
    background: linear-gradient(to right, #6f0db5, #b15be0);
}

.navbar {
    padding: 0;
    background-color: #22092C;
    width: 100%;
    margin: 0 auto;
    height: 8%;
}

.navbar ul {
    margin: 0;
    padding: 0;
    display: flex;
    list-style: none;
    align-items: center;
}

.navbar li {
    position: relative;
}

.navbar a,
.navbar a:focus {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 15px 0 15px 30px;
    font-size: 17px;
    font-weight: 500;
    color: #fff;
    white-space: nowrap;
    transition: 0.3s;
    text-decoration: none;
}

.navbar a i,
.navbar a:focus i {
    font-size: 14px;
    line-height: 0;
    margin-left: 5px;
}

.navbar a:hover,
.navbar .active,
.navbar .active:focus,
.navbar li:hover>a {
    color: #47b2e4;
}

.navbar .getstarted,
.navbar .getstarted:focus {
    padding: 8px 20px;
    border-radius: 50px;
    color: #fff;
    font-size: 14px;
    font-weight: 600;
    border: 2px solid #47b2e4;
}

.navbar .getstarted:hover,
.navbar .getstarted:focus:hover {
    color: #fff;
    background: #31a9e1;
}

/* Add the following styles to move Login and Register buttons to the right */
.navbar .right-buttons {
    margin-left: auto;
    display: flex;
    align-items: center;
}

.navbar .right-buttons a {
    margin-left: 30px;
}

/* Navbar links separately */
.navbar a {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 15px 0 15px 30px;
    font-size: 17px;
    font-weight: 500;
    color: #fff;
    white-space: nowrap;
    transition: 0.3s;
    text-decoration: none;
}

.navbar a i {
    font-size: 14px;
    line-height: 0;
    margin-left: 5px;
}

.navbar a:hover,
.navbar .active,
.navbar .active:focus,
.navbar li:hover>a {
    color: #47b2e4;
}

.navbar .getstarted,
.navbar .getstarted:focus {
    padding: 8px 20px;
    border-radius: 50px;
    color: #fff;
    font-size: 14px;
    font-weight: 600;
    border: 2px solid #47b2e4;
}

.navbar .getstarted:hover,
.navbar .getstarted:focus:hover {
    color: #fff;
    background: #31a9e1;
}


</style>
</head>
<body>
<nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link scrollto active" href="home.jsp">Home</a></li>
          <li><a class="nav-link scrollto" href="login.html">Create Note</a></li>
          <li><a class="nav-link scrollto" href="login.html">Show Note</a></li>
          <div class="right-buttons">
            <li><a class="getstarted scrollto" href="register.html">Register</a></li>
            <li><a class="getstarted scrollto" href="login.html">Login</a></li>
          </div>
        </ul>
      </nav>
</body>
</html>