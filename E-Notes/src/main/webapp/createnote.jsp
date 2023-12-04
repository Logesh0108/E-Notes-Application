<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Create note</title>
    <style>
       <style>
    body {
        margin:0px;
        padding:0px;
    }

    .container {
        background: linear-gradient(to right, #6f0db5, #b15be0);
        color: #fff;
        padding: 4% 10%;
        width: 80%;
        height: 83vh;
        margin: 0 auto;
         position: relative;
    }

    .notes-container {
        max-width: 500px;
        margin: 20px 0;
    }

    .input-box {
        width: 100%;
        background: #fff;
        color: #333;
        padding: 20px;
        outline: none;
        border-radius: 5px;
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
    <div class="container">
        <h1 class="text-center mb-4">Notes</h1>
        <form action="noteconnect.jsp" method="post">
            <label for="noteTitle">Note Title:</label><br>
            <br>
            <input type="text" id="noteTitle" name="noteTitle" class="form-control input-box" required><br>
<br>
            <label for="noteContent">Note Content:</label><br>
            <br>
            <input type="text" contenteditable="true" name="noteContent" class="form-control input-box" required/>
<br>
<br>
            <button type="submit" class="button">Save Notes</button>
            
            <div>
      <a href="dashboard.jsp" class="button button-show-notes">Show Notes</a>
      <a href="logout.jsp" class="button button-logout">Logout</a>
    </div>
        </form>
        <jsp:include page="footer.jsp" />
    </div>
    
</body>

</body>
</html>
