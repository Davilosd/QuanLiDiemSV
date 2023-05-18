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
<form:form action="nhapdiem/nhap.htm" modelAttribute="maltc" method ="get">
   <div>
      <label>Ma Lop Tin Chi</label>
      <input name = "searchInput">
      <button class="btn btn-default" name="btnSearch">Tim kiem</button>
   </div>
  <div>

   </div>
</form:form>
<form method="post" action="nhapdiem/nhap.htm">

<c:forEach  var="user" items="${users}">


	<div>
    <label>Ma Lop Tin Chi:</label>
    <td>${user.maLTC }</td>
    <input type="hidden" name="maltc"  value="${user.maLTC }" >
    </div>
   	<div>
    <label>MaSV:</label>
    <td>${user.maSV }</td>
   	<input type="hidden" name="masv" value="${user.maSV }" >
   	</div>
   	<div>
   	<label>DCC</label>
   <input type="text"name="dcc"  value="${user.DCC }" >
   	</div>
   	<div>
   	<label>DGK</label>
   	<input type="text" name="dgk" value="${user.DGK }" >
   	</div>
   	<div>
   	<label>DThi</label>
   	<input type="text" name="dthi" value="${user.DThi }" >
   	</div>
   	<div>
   	<label>Huy dang ki</label>
   	<input type="text" name="huydk" value="${user.huyDK }" >
   	</div>

   
    
  </c:forEach>
    <button class="btn btn-default" name="btnUpdate">Update</button>
    </form>
<p>${message }</p>
<table>
<form:form action="nhapdiem/nhap.htm" modelAttribute="user" method="post">
 <tr>
     <th> Lop Tin CHi </th>
     <th> Ma So SV </th>
     <th>  </th>
</tr>
<c:forEach  var="u" items="${users }">
  <tr>
   	  <td>${u.maLTC }</td>
      <td>${u.maSV }</td>
      <td>${u.DCC }</td>
      <td>${u.DGK }</td>
	  <td>${u.DThi }</td>
      <td><a href="nhapdiem/nhap/${u.maLTC }.htm?linkEdit">Update</a></td>
      <td><a href="nhapdiem/nhap/${u.maLTC }.htm?linkDelete">Delete</a></td>
  </tr>

</c:forEach>
</form:form>
</table>
</body>
</html>