<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Note</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            
        }

        .page-container {
            background: linear-gradient(to right, #6f0db5, #b15be0);
            color: black;
            height: 100vh;
            overflow-y: hidden;
        }

        .main-container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100%;
        }

        .form-container {
            flex: 1;
            max-width: 500px;
            background-color: #fff;
            color: #333;
            padding: 20px;
            border-radius: 8px;
            box-shadow: rgba(0, 0, 0, 0.25) 0px 54px 55px, rgba(0, 0, 0, 0.12) 0px -12px 30px, rgba(0, 0, 0, 0.12) 0px 4px 6px, rgba(0, 0, 0, 0.17) 0px 12px 13px, rgba(0, 0, 0, 0.09) 0px -3px 5px;
            margin-right: 20px; /* Adjust margin as needed */
        }

        h1 {
            text-align: center;
    padding: 20px;
    margin: 0;
    background-color: #22092C;
    color: white;
        }

        form {
            display: grid;
            grid-gap: 15px;
        }

        label {
            font-weight: bold;
            color: black;
        }

        input[type="text"],
        textarea {
            width: 100%;
            padding: 10px;
            box-sizing: border-box;
            margin-bottom: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        button {
            background-color: #3498db;
            color: #fff;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease-in-out;
        }

        button:hover {
            background-color: #22092C;
      color: #fff;
        }

        .form-container:hover {
            box-shadow: 0 0 10px rgba(255, 255, 255, 0.5);
        }

        .image-container {
            width: 100%;
            max-width: 500px;
            border-radius: 8px;
            overflow: hidden;
        }

        img {
            width: 80%;
            height: 80%;
            object-fit: cover;
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
        
    </style>
</head>

<body>

    <div class="page-container">
    <h1>Update Notes</h1>
    <a href="dashboard.jsp" class="button button-show-notes">Dashboard</a>
      <a href="logout.jsp" class="button button-logout">Logout</a>
        <div class="main-container">
        
            <div class="form-container" id="updateContainer">
            
                <form action="updated.jsp" method="post">
    <label for="id">ID:</label>
    <input type="text" id="id" name="id" value="<%= (request.getParameter("id") != null) ? request.getParameter("id") : "" %>" readonly>

    <label for="noteTitle">Note Title:</label>
    <input type="text" id="noteTitle" name="noteTitle" value="<%= (request.getParameter("note_title") != null) ? request.getParameter("note_title") : "" %>">

    <label for="noteContent">Note Content:</label>
    <textarea id="noteContent" name="noteContent"><%= (request.getParameter("note_content") != null) ? request.getParameter("note_content") : "" %></textarea>

    <button type="submit" name="updateButton">Update</button>
</form>

            </div>
            <div class="image-container">
                <img src="images/notes.png" alt="Placeholder Image">
            </div>
        </div>
    </div>
    <jsp:include page="footer.jsp" />

</body>

</html>
