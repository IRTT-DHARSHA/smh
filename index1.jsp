<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Management Dashboard</title>
    <link rel="stylesheet" type="text/css" href="/css/style1.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
</head>
<body>
    <header class="title">
        <h1>IRTT - STUDENT LIST </h1>
    </header>

    <main class="dashboard">
        <nav class="sidebar">
            <a href="#Add">Add</a>
            <a href="#Update">Update</a>
            <a href="#Delete">Delete</a>
            <a href="#Search">Search</a>
            <a href="/student_list">View All</a>
        </nav>

        <section class="content">

            <div id="Add" class="card">
                <h2>Add Student</h2>
                <form action="addStudent" method="post" class="form-grid">

               
                    <label for="rollno">ROLL.NO:</label>
      <input type="text" name="rollno" id="rollno" placeholder="Enter your roll number" required />

      <label for="name">NAME:</label>
      <input type="text" name="name" id="name" placeholder="Enter your name" required />

      <label for="dept">DEPARTMENT:</label>
      <input type="text" name="dept" id="dept" placeholder="Enter your department" required />

      <label for="year">YEAR:</label>
      <input type="text" name="year" id="year" placeholder="Enter your year" required />

      <label for="dob">D.O.B:</label>
      <input type="date" name="dob" id="dob" placeholder="Enter your date of birth" required />

      <label for="bloodgroup">BLOOD GROUP:</label>
      <input type="text" name="bloodgroup" id="bloodgroup" placeholder="Enter your blood group" required />

      <label for="nativeplace">NATIVE PLACE:</label>
      <input type="text" name="nativeplace" id="nativeplace" placeholder="Enter your native place" required />

      <label for="hostel_r_not">HOSTEL OR NOT (yes/no):</label>
      <input type="text" name="hostel_r_not" id="hostel_r_not" placeholder="Yes or No" required />
<br>

                    <button type="submit">Add</button>
                </form>
                <p>Result:</p>
            </div>
            <div id="Update" class="card">
                <h2>Update Student</h2>
                <form action="update" method="post" class="form-grid">
                   
                    <label for="id">Student ID</label>
                    <input type="text" id="id" name="id" placeholder="Enter your ID number" required>

                    
                    <label for="rollno">ROLL.NO:</label>
      <input type="text" name="rollno" id="rollno" placeholder="Enter your roll number" required />

      <label for="name">NAME:</label>
      <input type="text" name="name" id="name" placeholder="Enter your name" required />

      <label for="dept">DEPARTMENT:</label>
      <input type="text" name="dept" id="dept" placeholder="Enter your department" required />

      <label for="year">YEAR:</label>
      <input type="text" name="year" id="year" placeholder="Enter your year" required />

      <label for="dob">D.O.B:</label>
      <input type="date" name="dob" id="dob" placeholder="Enter your date of birth" required />

      <label for="bloodgroup">BLOOD GROUP:</label>
      <input type="text" name="bloodgroup" id="bloodgroup" placeholder="Enter your blood group" required />

      <label for="nativeplace">NATIVE PLACE:</label>
      <input type="text" name="nativeplace" id="nativeplace" placeholder="Enter your native place" required />

      <label for="hostel_r_not">HOSTEL OR NOT (yes/no):</label>
      <input type="text" name="hostel_r_not" id="hostel_r_not" placeholder="Yes or No" required />
<br>

                    <button type="submit">Update</button>
                </form>
                
            </div>


            <div id="Delete" class="card">
                <h2>Delete Student</h2>
                <form action="delete" method="post" class="form-grid">
                    <label for="deleteId">Student ID</label>
                    <input type="text" id="deleteId" name="id" placeholder="Enter your ID number" required>

                    <button type="submit" class="delete-btn">Delete</button>
                </form>
                <p><%= request.getAttribute("message") %></p>
            </div>


            <div id="Search" class="card">
                <h2>Search Student</h2>
                <form action="search" method="get" class="form-grid">
                    <label for="searchId">Student ID</label>
                    <input type="text" id="searchId" name="id" placeholder="Enter your ID number" required>

                    <button type="submit">Search</button>
                </form>
                    <p>Result:</p>
            </div>

        </section>
    </main>

</body>
</html>
