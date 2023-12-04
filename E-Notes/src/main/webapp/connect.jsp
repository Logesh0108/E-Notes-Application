<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Registration</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to right, #6f0db5, #b15be0);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .center-alert {
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: #ffffff;
            padding: 20px;
            border: 1px solid #000;
            text-align: center;
        }

        .alert-button {
			  margin-top: 10px;
			  padding: 10px;
			  cursor: pointer;
			  background-color: #4caf50;
			  color: #fff;
			  border: none;
			  border-radius: 50px; /* Matching the border-radius of the .twenty button */
			  text-transform: uppercase; /* Matching the text-transform of the .twenty button */
			  transition: opacity 400ms ease-out, right 400ms ease-out 100ms; /* Matching the transition properties of the .twenty button */
}

.alert-button:hover::after {
  opacity: 1;
  right: -20px;
}

    </style>
</head>
<body>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/notese", "root", "");

        // Check if the username already exists
        PreparedStatement checkUsername = conn.prepareStatement("SELECT * FROM registration WHERE username = ?");
        checkUsername.setString(1, username);
        ResultSet existingUser = checkUsername.executeQuery();

        if (existingUser.next()) {
%>
            <script>
                var alertDiv = document.createElement("div");
                alertDiv.className = "center-alert";
                alertDiv.innerHTML = "<p>Username already exists. Please choose a different username.</p><button class='alert-button' onclick='redirectPage()'>Oops!!! Try Again</button>";

                document.body.appendChild(alertDiv);

                function redirectPage() {
                    document.body.removeChild(alertDiv);
                    window.location.href = 'register.html'; // Replace with the actual registration page URL
                }
            </script>
<%
        } else {
            // If the username doesn't exist, proceed with the insertion
            PreparedStatement ps = conn.prepareStatement("INSERT INTO registration(username, password) VALUES (?, ?)");
            ps.setString(1, username);
            ps.setString(2, password);
            int x = ps.executeUpdate();

            if (x > 0) {
%>
                <script>
                    var alertDiv = document.createElement("div");
                    alertDiv.className = "center-alert";
                    alertDiv.innerHTML = "<p>Registration successful!</p><button class='alert-button' onclick='redirectPage()'>Done!!!</button>";

                    document.body.appendChild(alertDiv);

                    function redirectPage() {
                        document.body.removeChild(alertDiv);
                        window.location.href = 'login.html';
                    }
                </script>
<%
            } else {
                out.println("Not registered");
            }
        }

    } catch (Exception e) {
        out.print(e);
    }
%>
</body>
</html>
