<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"    "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Item</title>
 
<!--  <script type ="text/javascript">
 
    function update()
    {
    document.productForm.action="update";
    document.productForm.submit();
 
    }
 
   function list()
    {
    document.productForm.action="list";
    document.productForm.submit();
 
    } 
 
</script> -->
    </head>
 
    <body>
 
    <form:form  method="GET" action="details" modelAttribute="id">
    <%-- <input name="id" type="hidden" value="${id}"> --%>
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
                  <th> <input type="submit" value="Add New emp"></th><th><!-- <input type="button" value="Update"  onclick="update()"/> --> <!-- <input type="button" value="List"  onclick="list()"/> -->
                  <a href="update">Update</a>
                  <a href="list">List</a>
                  </th> 
                </tr>
 
            </table>
        </div>
 
        </form:form>
 
       <div align="center">
            <h1>Item List</h1>
            <table border="1">
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Email</th>
                <th>Password</th>
                <th>Age</th>
                <th>Category </th>
                
                <th>Action</th>
                <th>Action</th>
 
                 </tr>
                <c:forEach items="${emplist}" var="emp" >
                <tr>
                   
                     <td>${emp.id}</td>
                     <td>${emp.name}</td>
                     <td>${emp.email}</td>
                     <td>${emp.password}</td>
                     <td>${emp.age}</td>
                    <td>${emp.category}</td>
                    <td><a href="<c:url value='/edit/${emp.id}'/>" >Edit</a></td>
                    <td><a href="<c:url value='/delete/${emp.id}' />" >Delete</a></td>
                    
                   
 
                </tr>
                </c:forEach>
            </table>
        </div>              
 
    </body>
</html>