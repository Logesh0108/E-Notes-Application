<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <style>
        body {
    font-family: 'Arial', sans-serif;
    margin: 0;
    padding: 0;
    background: linear-gradient(to right, #6f0db5, #b15be0);
}


h1 {

    text-align: center;
    padding: 20px;
    margin: 0;
    background-color: #22092C;
    color: white;
}


.container {
    width: 80%;
    margin: 50px auto;
}

table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
    border-radius: 5px; /* Add border-radius property */
}



th, td {
    border: 1px solid #ddd;
    padding: 12px;
    text-align: left;
}

th {
    background-color: #4CAF50;
    color: white;
}
tr {
    background-color: white; /* Set the background color for all table rows */
}



tr:hover {
    background-color: #f1f1f1;
}
.delete-button{
	background-color:#ff5252;
    color: black;
    cursor: pointer;
    border: 1px;
    padding: 10px 20px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    border: 2px solid #fff;
    font-size: 16px;
    border-radius: 8px;
    transition: background-color 0.3s, box-shadow 0.3s;
}


.update-button {
    background-color: #90EE90;
    color: black;
    cursor: pointer;
    border: 1px;
    padding: 10px 20px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    border: 2px solid #fff;
    font-size: 16px;
    border-radius: 8px;
    transition: background-color 0.3s, box-shadow 0.3s;
}

.update-button:hover, .delete-button:hover {
    background-color: #22092C;
      color: #fff;
}

.container table {
    margin: auto;
}

.container th, .container td {
    text-align: center;
}

.container td button {
    display: inline-block;
}

.button {
    background-color: white;
    color: black;
    cursor: pointer;
    border: 1px;
    padding: 10px 20px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    border-radius: 8px;
    transition: background-color 0.3s, box-shadow 0.3s;
}

.button:hover {
    background-color: #22092C;
      color: #fff;
    box-shadow: 0 8px 16px rgba(106, 13, 173, 0.7);
}

.button-show-notes {
    position: absolute;
    top: 0;
    right: 0;
    margin-top:20px;
    margin-right:115px;
}

.button-logout{
position: absolute;
    top: 0;
    right: 0;
    margin-top:20px;
    margin-right:10px;
}

@media screen and (max-width: 600px) {
    /* Adjust styles for smaller screens if needed */
    .container {
        width: 100%;
    }
}

    </style>
</head>
<body>

    <header>
        <h1>Saved Notes</h1>
    </header>

    <div class="container" id="noteContainer">
        <!-- Content will be loaded dynamically here -->
        <a href="createnote.jsp" class="button button-show-notes">Create New Notes</a>
        <a href="logout.jsp" class="button button-logout">Logout</a>
        <table>
            <tr>
                <th>ID</th>
                <th>Title</th>
                <th>Content</th>
                <th>Action</th>
            </tr>
            <%
            int userid = (int) session.getAttribute("userid");
            Connection conn = null;
            PreparedStatement pstmt = null;
            ResultSet rs = null;

                try {
                	Class.forName("com.mysql.jdbc.Driver");
                    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/notese", "root", "");
                    String sql = "SELECT id, note_title, note_content FROM notes WHERE userid = ?";
                    pstmt = conn.prepareStatement(sql);
                    pstmt.setInt(1, userid);
                    rs = pstmt.executeQuery();
                    

                    if (rs.next()) {
                        do {
            %>
                            <tr>
                                <td><%= rs.getInt("id") %></td>
                                <td><%= rs.getString("note_title") %></td>
                                <td><%= rs.getString("note_content") %></td>
                                <td>
                                    <button class="update-button" data-id="<%= rs.getInt("id") %>">Update</button>
                                    <button class="delete-button" data-id="<%= rs.getInt("id") %>">Delete</button>
                                </td>
                            </tr>
            <%
                        } while (rs.next());
                    } else {
            %>
                        <tr>
                            <td colspan="4">No data found in the 'notes' table.</td>
                        </tr>
            <%
                    }
                } catch (Exception e) {
                    out.println("An error occurred: " + e.getMessage());
                    e.printStackTrace();
                } 
            %>
        </table>
    </div>

    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <!-- Inside the script tag at the end of your HTML body -->
<script>
    $(document).on('click', '.delete-button', function() {
    	alert('Are you sure to Delete the notes!');
        var idToDelete = $(this).data('id');

        // Redirect to delete confirmation page
        window.location.href = 'deleteConfirmation.jsp?id=' + idToDelete;
    });
</script>


<!-- Inside the script tag at the end of your HTML body -->
<script>
    $(document).on('click', '.update-button', function() {
    	alert('Are you sure to update the notes!');
        var idToUpdate = $(this).data('id');
        window.location.href = 'update.jsp?id=' + idToUpdate;
    });
</script>


<jsp:include page="footer.jsp" />
</body>
</html>
