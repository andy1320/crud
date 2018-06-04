<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
     
    <ul class="nav navbar-nav">
      <li class="active"><a href="indexpage">Index</a></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">User <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#" title="User Management">users</a></li>
						<li><a href="Groups" title="Group Management">groups</a></li>
						<li><a href="list" title="User Selection">CURD</a></li>
						<li><a href="online" title="Users Online">online</a></li>
						<li><a href="#" title="User Importer">import</a></li>
					</ul></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">modules <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#" title="Modules Management">modules</a></li>
						<li><a href="#" title="Topics Management">topics</a></li>
						<li><a href="#" title="Question Management">questions</a></li>
						<li><a href="#" title="Multiple-Answer Management">answers</a></li>
						<li><a href="#" title="Questions List">list</a></li>
						<li><a href="#" title="Question Importer">import</a></li>
						<li><a href="#" title="Media File Manager">file manager</a></li>
						<li><a href="#" title="SSL Certificates">SSL certificates</a></li>
					</ul>
				<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">tests<span class="caret"></span></a>
        <ul class="dropdown-menu">
						<li><a href="tce_edit_module.php" title="Modules Management">modules</a></li>
						<li><a href="#" title="Test Management">tests</a></li>
						<li><a href="#" title="Test Selection">select</a></li>
						<li><a href="#" title="Import Answers (OMR)">import
								answers</a></li>
						<li><a href="#" title="#">OMR Bulk Importer</a></li>
						<li><a href="#" title="Answer Evaluation">evaluation</a></li>
						<li><a href="#" title="Test Results Summary">results</a></li>
						<li><a href="#" title="Test Results">users</a></li>
					</ul></li>
      <li><a href="#"
				title="Database Backup and Restore">backup</a></li>
				<li><a href="http://www.tcexam.org" title="help">help</a></li>
			<li><a href="#" title="about TCExam">info</a></li>
			<li><a href="http://localhost:8080/CURD"
				title="click on this link to exit the system (session end)">logout</a></li>
    </ul>
  </div>
</nav>
  
</body>
</html>