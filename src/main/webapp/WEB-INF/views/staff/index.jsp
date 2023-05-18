<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table class="table table-hover">
   <tr>
      <th>Ma NV</th>
      <th>Ho va ten</th>
     <th>Gioi tinh</th>
     <th>phong</th>
   </tr>
   <c:forEach var="s" items="${staffs}">
   <tr>
      <td>${s.staff_id }</td>
      <td>${s.staff_name }</td>
      <td>${s.gender?'nam':'nu' }</td>
      <td>${s.departs.depart_name }</td>
   </tr>
   
   </c:forEach>


</table>
</body>
</html>