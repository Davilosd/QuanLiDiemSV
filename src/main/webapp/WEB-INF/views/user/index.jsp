<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table class="table table-hover">
<tr>
     <th> Username </th>
     <th> Password </th>
     <th> Fullname </th>
     <th>  </th>
</tr>
<c:forEach  var="u" items="${users}">
  <tr>
     <td>${u.maSV}</td>

      <td><a href="user/delete/${u.maSV}.htm">Delete</a></td>
  </tr>

</c:forEach>
</table>
</body>
</html>