<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"  "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
 <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>
<body>
<div align="center">
            <h1>User List</h1>
         <a href="update">Update</a>
            <table border="1">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Address</th>
                <th>Mobile</th>
                </tr>
                
                 <c:forEach items="${userlist}" var="user" >
                <tr>
                   
                    <td>${user.id}</td>
                    <td>${user.username}</td> 
                    <td>${user.address}</td>
                    <td>${user.mobile}</td>
                    
                  
                </tr>
                </c:forEach>
                </table>
                </div>
                
                
</body>
</html>