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
${message}
${message2}
<table class="table table-hover">
<form:form action="sinhvien_malop.htm" modelAttribute="masv" method ="get">
   <div>
      <label>Ma Lop</label>
      <input name = "searchInput">
   </div>
  <div>
        <button name = "btnsearch"  class="btn btn-default" name="${btnStatus}">Insert</button>
         <button name = "btn_edit"  class="btn btn-default" name="${btnStatus}">Hoan tat nhap diem</button>
   </div>
</form:form>
<c:forEach  var="u" items="${lop}">
  <tr>
     <td><div contenteditable>${u.maSV}</div></td>
		<label>Fullname</label>
      
            <td><a href="user/delete/${u.maSV}.htm">Chinh Sua</a></td>
      
  </tr>

</c:forEach>

</table>
</body>
</html>