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
 
    <form:form  method="GET" action="details1" modelAttribute="id">
    <%-- <input name="id" type="hidden" value="${id}"> --%>
        <div align="center">
            <h1>User Detail</h1>
            <table border="1">
 
                <tr>
                     <th>Id</th><td><input name="id" value="${user.id}"></td>
 
                </tr>  
             <tr>
                     <th>Name</th><td><input name="username" value="${user.username}"></td>
 
                </tr>
                 <tr>
                     <th>Address</th><td><input name="address" value="${user.address}"></td>
 
                </tr>
                 <tr>
                     <th>Mobile</th><td><input name="mobile" value="${user.mobile}"></td>
 
                </tr>
            
               <tr>
                  <th> <input type="submit" value="Add New user"></th><th><!-- <input type="button" value="Update"  onclick="update()"/> --> <!-- <input type="button" value="List"  onclick="list()"/> -->
                  <a href="list1">List</a>
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
                <th>Address</th>
                <th>Mobile</th>
                 <th>Action</th> 
                  <th>Action</th>      
        
                 </tr>
                <c:forEach items="${userlist1}" var="user" >
                <tr>
                      <td>${user.id}</td>
                     <td>${user.username}</td>
                     <td>${user.address}</td>
                     <td>${user.mobile}</td>            
                    <td><a href="<c:url value='/edit/${user.id}'/>" >Edit</a></td>
                    <td><a href="<c:url value='/delete/${user.id}' />" >Delete</a></td>
                    
                   
 
                </tr>
                </c:forEach>
            </table>
        </div>              
 
    </body>
</html>