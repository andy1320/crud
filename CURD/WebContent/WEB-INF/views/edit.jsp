<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
 <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

 <form:form  method="GET" action="update" modelAttribute="emp">
   <%--  <input name="id" type="hidden" value="${id}"> --%>
        <div align="center">
            <h1>Emp Detail</h1>
            <table border="1">
 
                <tr>
                    <th>Id</th><td><input name="id" value="${emp.id}"></td>
 
                </tr>
             <tr>
                     <th>Name</th><td><input name="name" value="${emp.name}"></td>
 
                </tr>
                 <tr>
                     <th>Email</th><td><input name="email" value="${emp.email}"></td>
 
                </tr>
                 <tr>
                     <th>Password</th><td><input name="password" value="${emp.password}"></td>
 
                </tr>
             <tr>
                   <th>Age</th><td><input name="age" value="${emp.age}"></td>
 
                </tr>
               <tr>
                <tr>
                   <th>Category </th><td><input name="category" value="${emp.category }"></td>
 
                </tr>
               <tr>
                  <th> <input type="submit" value="Update"></th><th><!-- <input type="button" value="Update"  onclick="update()"/> --> <!-- <input type="button" value="List"  onclick="list()"/> -->
                 
               
                  </th> 
                </tr>
 
            </table></div></form:form>
</body>
</html>