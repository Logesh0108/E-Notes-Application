<%@ page import ="java.sql.*" %>
<% 
String action = request.getParameter("action");

if ("register".equals(action)) {
    // Registration code
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/notese", "root", "");
        PreparedStatement ps =  conn.prepareStatement("insert into registration(username, password) values (?, ?)");
        ps.setString(1, username);
        ps.setString(2, password);
        int x = ps.executeUpdate();
        if (x > 0) {
            out.println("registered");
        } else {
            out.println("not registered");
        }
    } catch (Exception e) {
        out.print(e);
    }
} else if ("login".equals(action)) {
    // Login code
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/notese", "root", "");
        PreparedStatement ps =  conn.prepareStatement("select * from registration where username=? and password=?");
        ps.setString(1, username);
        ps.setString(2, password);
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            // Login successful, display alert and redirect to index.jsp
            session.setAttribute("userid",rs.getInt("id"));
%>
            <script>
            	alert("Login Successful!!!");
                window.location.href = "createnote.jsp";
            </script>
<%
        } else {
%>
            <script>
                alert("Login failed");
                window.location.href = "login.html";
            </script>
<%
        }
    } catch (Exception e) {
        out.print(e);
    }
}
%>
