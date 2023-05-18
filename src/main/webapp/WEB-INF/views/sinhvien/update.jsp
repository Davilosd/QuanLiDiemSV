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

<form:form action="sinhvien/update.htm" modelAttribute="user" method="post">
	
	<div>
		<td>${user.maSV }</td>
	</div>
	<div>
    <label>MaSV</label>
    <form:input path="MaSV" />
    </div>
   	<div>
    <label>HoSV</label>
    <form:input path="HoSV" />
    </div>
   	<div>
    <label>TenSV</label>
   	<form:input path="TenSV" />
   	</div>
   	<div>
   	<label>Phai</label>
   	<form:input path="Phai" />
   	</div>
   	<div>
   	<label>Dia Chi</label>
   	<form:input path="DiaChi" />
   	</div>
   	<div>
   	<label>Ngay Sinh</label>
   	<form:input path="NgaySinh" />
   	</div>
   	<div>
   	<label>Khoa Hoc</label>
   	<form:input path="KhoaHoc" />
   	</div>
   	<div>
   	<label>Ma Lop</label>
   	<form:input path="MaLop" />
   	</div>
   	<div>
        <button class="btn btn-default" name="btnEdit">Insert</button>
   </div>
</form:form>
  
<p>${message }</p>
<table>
<form:form action="sinhvien/update.htm" modelAttribute="user" method="post">
 <tr>
     <th> Username </th>
     <th> Password </th>
     <th> Fullname </th>
     <th>  </th>
</tr>
<c:forEach  var="u" items="${users }">
  <tr>
     <td>${u.maSV }</td>
      <td>${u.hoSV }</td>
      <td>${u.tenSV }</td>
      <td>${u.phai }</td>
      <td><a href="sinhvien/update/${u.maSV }.htm?linkEdit">Update</a></td>
      <td><a href="sinhvien/update/${u.maSV }.htm?linkDelete">Delete</a></td>
  </tr>

</c:forEach>
</form:form>
</table>
</body>
</html>