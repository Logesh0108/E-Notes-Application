<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<%
// Get parameters from the form
String id = request.getParameter("id");
String noteTitle = request.getParameter("noteTitle");
String noteContent = request.getParameter("noteContent");

// JDBC connection details (modify these according to your database)
String jdbcUrl = "jdbc:mysql://localhost:3306/notese";
String dbUser = "root";
String dbPassword = "";

Connection conn = null;
PreparedStatement stmt = null;

try {
    // Load the JDBC driver
    Class.forName("com.mysql.cj.jdbc.Driver");

    // Establish the database connection
    conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);

    // Update the database record
    String updateQuery = "UPDATE notes SET note_title=?, note_content=? WHERE id=?";
    stmt = conn.prepareStatement(updateQuery);
    stmt.setString(1, noteTitle);
    stmt.setString(2, noteContent);
    stmt.setString(3, id);
    stmt.executeUpdate();

    out.print("Updated");
    // Redirect to dashboard.jsp after updating
    response.sendRedirect("dashboard.jsp");
} catch (Exception e) {
    e.printStackTrace();
} finally {
    // Close resources in the finally block
    try {
        if (stmt != null) {
            stmt.close();
        }
        if (conn != null) {
            conn.close();
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
}
%>
