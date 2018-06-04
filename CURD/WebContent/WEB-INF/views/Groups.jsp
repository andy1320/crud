<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body>
<div class="body">
<div class="content">
<a name="topofdoc" id="topofdoc"></a>
<h1>Group Management</h1>
<div class="warning">ATTENTION: some of the required fields have not been filled out:  name</div>
<div class="container">
<div class="tceformbox">
<form action="/tcexam/admin/code/tce_edit_group.php" method="post" enctype="multipart/form-data" id="form_groupeditor">
<div class="row">
<span class="label">
<label for="group_id">group</label>
</span>
<span class="formw">
<select name="group_id" id="group_id" size="0" onchange="document.getElementById('form_groupeditor').submit()">
<option value="0" style="background-color:#009900;color:white;" selected="selected">+</option>
<option value="1">default</option>
</select>
</span>
</div>
<noscript>
<div class="row">
<span class="label">&nbsp;</span>
<span class="formw">
<input type="submit" name="selectrecord" id="selectrecord" value="select" />
</span>
</div>
</noscript>
<div class="row"><hr></div>
<div class="row">
<span class="label">
<label for="group_name" title="users' group name">name</label>
</span>
<span class="formw">
<input name="group_name" id="group_name" value="" size="20" maxlength="255" title="users' group name" type="text"></span>
</div>
<div class="row">
<input name="add" id="add" value="add" title="add current record to database" type="submit"><input name="clear" id="clear" value="clear" title="reset form fields to blank" type="submit"><input name="ff_required" id="ff_required" value="group_name" type="hidden">
<input name="ff_required_labels" id="ff_required_labels" value="name" type="hidden">
</div>
</form>
</div>
<div class="pagehelp">In this form you can manage the different users' groups.</div>
</div>

</div>
</div>
</body>
</html>