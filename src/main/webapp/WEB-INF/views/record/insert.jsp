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
${message }
<form:form action="record/insert.htm" modelAttribute="record">
   <div>
       <label for="">Nhan vien</label>
        <form:select path="staffs.staff_id" items="${staffs}" itemValue="staff_id" itemLabel="staff_name" />
   </div>
   <div>
       <label>Loai</label>
        <form:radiobutton path="type" value="true" label="thanh tich" />
        <form:radiobutton path="type" value="true" label="ky luat" />
   </div>
   <div>
      <label >Ly do</label>
      <form:textarea path="reason" row="3" />
   </div>
   <div>
      <button>Insert</button>
   </div>
</form:form>
</body>
</html>