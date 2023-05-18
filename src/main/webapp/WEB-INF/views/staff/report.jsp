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
      <th>ma nv</th>
    <th>tong thanh tich</th>
    <th>tong ky luat</th>
    <th>tong ket</th>
  </tr>
<c:forEach var="a" items="${arrays }">
    <tr>
        <td>${a[0]}</td>
    <td>${a[1]}</td>
    <td>${a[2]}</td>
    <td>${a[1]-a[2]}</td>
    </tr>

</c:forEach>

</table>
</body>
</html>