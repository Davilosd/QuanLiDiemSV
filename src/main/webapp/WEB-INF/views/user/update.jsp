<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<base href="${pageContext.servletContext.contextPath }/" />
</head>
<body>
<form:form action="user/update.htm" modelAttribute="user" method="post">
   <div>
      <label>Username</label>
      <form:input path="username" />
   </div>
   <div>
      <label>Password</label>
      <form:input path="password" />
   </div>
   <div>
      <label>Fullname</label>
      <form:input path="fullname" />
   </div>
  <div>
        <button class="btn btn-default" name="btnEdit">Insert</button>
   </div>
</form:form>
<p>${message }</p>
<table>
<form:form action="user/update.htm" modelAttribute="user" method="post">
 <tr>
     <th> Username </th>
     <th> Password </th>
     <th> Fullname </th>
     <th>  </th>
</tr>
<c:forEach  var="u" items="${users }">
  <tr>
     <td>${u.username }</td>
      <td>${u.password }</td>
      <td>${u.fullname }</td>
      <td><a href="user/update/${u.username }.htm?linkEdit">Update</a></td>
      <td><a href="user/update/${u.username }.htm?linkDelete">Delete</a></td>
  </tr>

</c:forEach>
</form:form>
</table>
</body>
</html>