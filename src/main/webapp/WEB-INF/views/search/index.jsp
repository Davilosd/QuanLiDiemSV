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
<form:form action="index.htm" modelAttribute="masv" method ="get">
   <div>
      <label>Ma Sinh Vien</label>
      <input name = "searchInput">
   </div>
  <div>
        <button name = "btnsearch"  class="btn btn-default" name="${btnStatus}">Insert</button>
   </div>
</form:form>
<c:forEach  var="u" items="${masv}">
  <tr>
     <td>${u.maSV}</td>

      <td><a href="user/delete/${u.maSV}.htm">Delete</a></td>
  </tr>

</c:forEach>
</table>
</body>
</html>