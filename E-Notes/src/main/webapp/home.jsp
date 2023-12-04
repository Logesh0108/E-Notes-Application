<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Home page</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <link href="images/style.css" rel="stylesheet">
  <style>
  
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
    body {
      margin: 0;
      font-family: Arial, sans-serif;
      background: linear-gradient(to right, #6f0db5, #b15be0);
    }

   .navbar {
  padding: 0;
  background-color: #22092C; /* Add your desired background color */
  width: 100%; /* Set the width to 75% of the window */
  margin: 0 auto; /* Center the navbar */
  height: 8%; /* Increase the height by 2% */
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
  padding: 15px 0 15px 30px; /* Increase the padding for height adjustment */
  font-size: 17px; /* Increase the font size */
  font-weight: 500;
  color: #fff;
  white-space: nowrap;
  transition: 0.3s;
  text-decoration: none; /* Add this line to remove the underline */
}

.navbar a i,
.navbar a:focus i {
  font-size: 14px; /* Increase the icon font size */
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
    
    .containers {
      text-align: center;
      margin: 20px;
      background-color: rgb(100, 16, 67); /* Add the background color you want */
      padding: 20px; /* Add padding for better appearance */
      border-radius: 10px; /* Add rounded corners if desired */
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      margin: 20px auto; /* Set auto margin for centering */
  width: 75%;     }

    h2 {
      color: white; /* Set the color of the text */
    }
    .project {
    text-align: center;
  border-radius: 10px; 
  background-color: #f2f2f2; /* Set your desired background color */
  padding: 20px;
  margin: 20px auto; /* Set auto margin for centering */
  width: 50%; /* Set the width to 50% of the parent container */
}

.project h2 {
  color: red; /* Set your desired text color */
  font-size: 24px; /* Set your desired font size */
}

.project marquee {
  color: grey; /* Set your desired text color */
  font-size: 24px; /* Set your desired font size */
  margin-top: 10px; /* Add some top margin for spacing */
}
 .buttons-container {
      text-align: center;
      margin-top: 20px;
    }
    .buttons-container button {
      padding: 10px 20px;
      font-size: 16px;
      margin: 0 10px;
      border-radius: 10px;
      cursor: pointer;
      background-color: #fff;
      color: #22092C;
      border: 2px solid #fff;
      transition: background-color 0.3s, color 0.3s;
    }
     .buttons-container button:hover {
      background-color: #22092C;
      color: #fff;
    }
    

  </style>
</head>
<body>
  <div>
  </div>
  <header id="header" class="fixed-top ">
    <div class="container d-flex align-items-center">
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
      </nav><!-- .navbar -->
    </div>
  </header>
  <div class="project">
    <h2>E-Notes Application</h2>
    <marquee direction="left">Save Your Notes Instantly!!!!!!</marquee>
  </div>
  <div class="buttons-container">
    <a href="login.html"><button>Login</button></a>
    <a href="register.html"><button>Register</button></a>
  </div>
  
   <div class="containers">
    <h2>"You don't have to be great to start, but you have to start to be great."</h2>
  </div>
  
  <jsp:include page="footer.jsp" />
</body>
</html>	
