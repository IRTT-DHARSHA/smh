<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Student Form</title>
   <link rel="stylesheet" href="icss.css" />
</head>
<body>
  <div class="form-container">
    <h1>Student Form</h1>
    <form action="/students/add" method="post">
      <label for="rollno">ROLL.NO:</label>
      <input type="text" name="rollno" id="rollno" placeholder="Enter your roll number" required />
<br>
      <label for="name">NAME:</label>
      <input type="text" name="name" id="name" placeholder="Enter your name" required />
<br>
      <label for="dept">DEPARTMENT:</label>
      <input type="text" name="dept" id="dept" placeholder="Enter your department" required />
<br>
      <label for="year">YEAR:</label>
      <input type="text" name="year" id="year" placeholder="Enter your year" required />
<br>
      <label for="dob">D.O.B:</label>
      <input type="date" name="dob" id="dob" placeholder="Enter your date of birth" required />
<br>
      <label for="bloodgroup">BLOOD GROUP:</label>
      <input type="text" name="bloodgroup" id="bloodgroup" placeholder="Enter your blood group" required />
<br>
      <label for="nativeplace">NATIVE PLACE:</label>
      <input type="text" name="nativeplace" id="nativeplace" placeholder="Enter your native place" required />
<br>
      <label for="hostel_r_not">HOSTEL OR NOT (yes/no):</label>
      <input type="text" name="hostel_r_not" id="hostel_r_not" placeholder="Yes or No" required />
<br>
      <button type="submit">SUBMIT</button>
    </form>
    <a href="/logout" style="float:right; color:red;">Logout</a>
    <a href="/student_list" class="button"> VIEW STUDENT </a>
    
  </div>
</body>
</html>
