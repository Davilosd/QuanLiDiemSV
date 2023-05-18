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
<form:form action="sinhvien/insert.htm" modelAttribute="user">
   <div>
      <label>Username</label>
      <form:input path="MaSV" />
   </div>
   <div>
      <label>Password</label>
      <form:input path="TenSV" />
   </div>
   <div>
      <label>Fullname</label>
      <form:input path="HoSV" />
   </div>
   
  <div>
        <button class="btn btn-default" name="${btnStatus }">Insert</button>
   </div>
</form:form>
</body>
</html>