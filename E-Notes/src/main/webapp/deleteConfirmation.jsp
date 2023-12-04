<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*,java.util.*" %>

<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Confirmation</title>
    <style>
    body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    background: linear-gradient(to right, #6f0db5, #b15be0);
    
}

.top-container {
background-color: #22092C;
    color: #fff;
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 10px 20px;
}

.top-buttons a {
    text-decoration: none;
    color: #fff;
    margin: 0 10px;
    padding: 10px;
    border-radius: 5px;
    transition: background-color 0.3s, color 0.3s;
}

.top-buttons a:hover {
    background-color:white;
    color: #22092C;;
}

h1 {
    margin-left:45%;
    background-color: #22092C;
}

form {
    text-align: center;
    margin-top: 20px;
}

form input[type="hidden"],
form button,
form a {
    display: inline-block;
    margin: 10px;
    padding: 10px 20px;
    text-decoration: none;
    font-size: 16px;
    border: 2px solid #3498db;
    color: #3498db;
    background-color: #fff;
    cursor: pointer;
    border-radius: 5px;
    transition: background-color 0.3s, color 0.3s;
}

form button:hover,
form a:hover {
    background-color: #22092C;
    color: #fff;
}
    
       
    </style>
</head>
<body>
    <div class="top-container">
        <h1>Delete Notes</h1>
        <div class="top-buttons">
            <a href="dashboard.jsp" class="top-button">Saved Notes</a>
            <a href="logout.jsp" class="top-button">Logout</a>
        </div>
    </div>

    <form action="delete.jsp" method="post" onsubmit="displaySuccessAndRedirect()">
        <input type="hidden" name="idToDelete" value="${param.id}" />
        <div class="button-container">
            <button type="submit">Delete the Note</button>
            <a href="dashboard.jsp">No, Quit</a>
        </div>
    </form>

    <script>
        function displaySuccessAndRedirect() {
            alert('Note deleted successfully');
            window.location.href = 'dashboard.jsp';
        }
    </script>
    <jsp:include page="footer.jsp" />
</body>
</html>


