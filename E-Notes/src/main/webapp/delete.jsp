<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*,java.util.*" %>

<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>

<%
String idToDeleteParam = request.getParameter("idToDelete");

if (idToDeleteParam != null && !idToDeleteParam.isEmpty()) {
    int idToDelete = Integer.parseInt(idToDeleteParam);

    Connection conn = null;
    PreparedStatement pstmt = null;

    try {
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/notese", "root", "");

        // Perform the deletion logic here (e.g., execute SQL DELETE statement)
        String sql = "DELETE FROM notes WHERE id = ?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setInt(1, idToDelete);
        int rowsAffected = pstmt.executeUpdate();

        if (rowsAffected > 0) {
            // Display an alert for successful deletion
            out.println("<script>alert('Note deleted successfully');</script>");
        } else {
            // Handle the case where the deletion was not successful (display an error message or take appropriate action)
            out.println("<script>alert('Error: Failed to delete note');</script>");
        }
    } catch (Exception e) {
        // Handle exceptions (display an error message or take appropriate action)
        out.println("<script>alert('Error: " + e.getMessage() + "');</script>");
        e.printStackTrace();
    } finally {
        // Close resources
        try {
            if (pstmt != null) pstmt.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
} else {
    // Handle the case where the ID is null or empty (display an error message or take appropriate action)
    out.println("<script>alert('Error: Note ID is null or empty');</script>");
}

// Redirect back to the dashboard after deletion
response.sendRedirect("dashboard.jsp");
%>
