
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.example.smh.Model.SModel" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Search Result</title>
  <link rel="stylesheet" href="css/style.css" />
  <style>
    :root {
      --primary: #2c3e50;
      --accent: #2980b9;
      --light: #f4f4f4;
      --gray: #e0e0e0;
      --highlight: #ecf0f1;
      --text: #333;
    }

    body {
      margin: 0;
      font-family: 'Poppins', sans-serif;
      background-color: var(--light);
      color: var(--text);
      display: flex;
      flex-direction: column;
      align-items: center;
      padding: 2rem;
      min-height: 100vh;
    }

    h1 {
      margin-bottom: 2rem;
      color: var(--primary);
    }

    table {
      width: 90%;
      max-width: 800px;
      border-collapse: collapse;
      background-color: white;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.05);
      border-radius: 12px;
      overflow: hidden;
    }

    th, td {
      padding: 1rem;
      border-bottom: 1px solid var(--gray);
      text-align: center;
    }

    th {
      background-color: var(--highlight);
      font-weight: 600;
    }

    tr:last-child td {
      border-bottom: none;
    }

    .message {
      margin-top: 1rem;
      font-weight: 600;
      color: var(--accent);
      text-align: center;
    }

    .button {
      display: inline-block;
      margin: 1.5rem 1rem 0;
      padding: 0.75rem 1.5rem;
      background-color: var(--accent);
      color: white;
      text-decoration: none;
      border-radius: 8px;
      font-weight: bold;
      transition: background 0.3s ease;
    }

    .button:hover {
      background-color: #1c6ea4;
    }

    .no-data {
      text-align: center;
      padding: 2rem;
      color: #888;
    }
  </style>
</head>
<body>

<h1>Search Result</h1>

<%
  SModel student = (SModel) request.getAttribute("searchedStudent");
  if (student != null) {
%>
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
    <tr>
      <td><%= student.getId() %></td>
      <td><%= student.getName() %></td>
      <td><%= student.getRollno() %></td>
      <td><%= student.getYear() %></td>
      <td><%= student.getDept() %></td>
      <td><%= student.getDob() %></td>
      <td><%= student.getBloodgroup() %></td>
      <td><%= student.getNativeplace() %></td>
      <td><%= student.getHostel_r_not() %></td
    </tr>
  </tbody>
</table>
<%
  } else {
%>
<p class="no-data">No student found with the given ID.</p>
<%
  }
%>

<p class="message"><%= request.getAttribute("message") %></p>

<a href="/index1" class="button">🔙 Back to Dashboard</a>
<a href="/" class="button">🔒 Log Out</a>

</body>
</html>

