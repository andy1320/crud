    <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>  
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"    "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
    
    <html>  
    <head>  
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
    <title><tiles:insertAttribute name="title" ignore="true" /></title>  
    </head>  
    <body>  
            <div style="padding:2px;lenth:5%"><tiles:insertAttribute name="header" /></div>
            <div><tiles:insertAttribute name="navbar" /></div>  
            <div style="float:left;padding:10px;width:15%; background-color:Tomato;"><tiles:insertAttribute name="menu" /></div>  
            <div style="float:left;padding:10px;width:80%;border-left:1px solid pink;">  
            <tiles:insertAttribute name="body" /></div>  
            <div style="clear:both"><tiles:insertAttribute name="footer" /></div>  
      
    </body>  
    </html>  