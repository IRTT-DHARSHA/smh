<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.smh.Model.SModel" %> <!-- Adjust this package to your actual Student class -->
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Student List</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f2f2f2;
    }
    table {
      width: 80%;
      margin: 40px auto;
      border-collapse: collapse;
      background-color: #fff;
    }
    th, td {
      padding: 12px;
      border: 1px solid #ccc;
      text-align: center;
    }
    th {
      background-color: #f0f0f0;
    }
    h1 {
      text-align: center;
      margin-top: 30px;
    }
    .button {
      display: block;
      width: 200px;
      margin: 20px auto;
      padding: 10px;
      background-color: #4CAF50;
      color: white;
      text-align: center;
      text-decoration: none;
      border-radius: 5px;
      font-weight: bold;
    }
  </style>
</head>
<body>

<h1>📋 All Students</h1>

<table>
  <thead>
    <tr>
      <th>ID</th>
      <th>Name</th>
      <th>Roll no</th>
      <th>year</th>
      <th>Dept</th>
      <th>Dob</th>
      <th>getBloodgroup</th>
      <th>getNativeplace</th>
      <th>getHostel_r_not</th>
    </tr>
  </thead>
  <tbody>
    <%
      List<?> rawList = (List<?>) request.getAttribute("students");
      List<SModel> students = new ArrayList<>();

      if (rawList != null) {
        for (Object obj : rawList) {
          if (obj instanceof SModel) {
            students.add((SModel) obj);
          }
        }
      }

      if (!students.isEmpty()) {
        for (SModel student : students) {
    %>
    <tr>
      <td><%= student.getId() %></td>
      <td><%= student.getName() %></td>
      <td><%= student.getRollno() %></td>
      <td><%= student.getYear() %></td>
      <td><%= student.getDept() %></td>
      <td><%= student.getDob() %></td>
      <td><%= student.getBloodgroup() %></td>
      <td><%= student.getNativeplace() %></td>
      <td><%= student.getHostel_r_not() %></td>
      
    </tr>
    <%
        }
      } else {
    %>
    <tr>
      <td colspan="5">No student records found.</td>
    </tr>
    <% } %>
  </tbody>
</table>

<a href="/index1" class="button">Dashboard</a>
<a href="/" class="button">Logout</a>


</body>
</html>