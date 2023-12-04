<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <!-- ... your existing head content ... -->
</head>
<body>
    <div class="container">
        <h1 class="text-center mb-4">Notes</h1>

        <%-- Retrieve user details from the session --%>
        <% 
            String username = (String) session.getAttribute("username");
        %>
        
        <div>
            <p>User Name: <%= username %></p>
            <!-- Add more details as needed -->
        </div>

        <%-- Retrieve notes from the database based on the user's username --%>
       

        <%-- Display notes --%>
        <div class="notes-container">
            <h2>Your Notes:</h2>
            <ul>
                
                    
            </ul>
        </div>
    </div>
</body>
</html>
