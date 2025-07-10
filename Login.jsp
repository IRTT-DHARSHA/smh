<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<div class="outerDiv">
    <div class="tit">
    <h2>Login Page</h2>
    </div>
    <form action="login" method="post">
        <div class="inner1">
        <label for="name">User Name</label><br/>
        <input type="text" id="uname" name="uname"required><br/><br/>

        <label for="age">Password</label><br/>
        <input type="password" id="password" name="password" required><br/><br>
        </div>
        <div class="inner2">
        <input type="submit" value="Login" class="inner-button">
        </div>
                <a href="/logout" style="float:right; color:red; text-align:left;">Logout</a>
        
    </form>
    
</div>
</body>
</html>