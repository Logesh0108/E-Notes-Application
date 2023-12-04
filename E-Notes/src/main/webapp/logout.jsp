<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%
    // Invalidate the current session to delete all session values
    session.invalidate();
%>

<!DOCTYPE html>
<html>
<head>
    <title>Logout</title>
    <!-- Add your styles and other head elements here -->
</head>
<body>
    <!-- You can add a message or other content here if needed -->
    <script>
        // Redirect to index.jsp after a short delay (e.g., 2 seconds)
        setTimeout(function() {
            window.location.href = 'login.html';
        }, 200); // 2000 milliseconds = 2 seconds
    </script>
</body>
</html>
