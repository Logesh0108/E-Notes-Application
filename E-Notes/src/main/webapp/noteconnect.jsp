<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Save Notes</title>
    <!-- Add your styles and other head elements here -->
</head>
<body>
<%
    String noteTitle = request.getParameter("noteTitle");
    String noteContent = request.getParameter("noteContent");
    int userid = (int) session.getAttribute("userid");

    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/notese", "root", "");

        // Insert note into the 'notes' table
        PreparedStatement ps = conn.prepareStatement("INSERT INTO notes (note_title, note_content,userid) VALUES (?, ?, ?)");
        ps.setString(1, noteTitle);
        ps.setString(2, noteContent);
        ps.setInt(3, userid);
        
        int x = ps.executeUpdate();

        if (x > 0) {
%>
            <script>
                alert("Note saved successfully!");
                window.location.href = 'dashboard.jsp'; // Redirect to the dashboard or another page
            </script>
<%
        } else {
            out.println("Note not saved");
        }

    } catch (Exception e) {
        out.print(e);
    }
%>
</body>
</html>
