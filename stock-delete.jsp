<?xml version="1.0"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>MEDICAL SHOP</title>
<style type="text/css" media="all">
	@import "global.css";
</style>

</head>

<body>
<div id="wrapper">
	<div id="header">
		<div id="logobox">
			<h1>  MEDICAL SHOP</h1>
			<h2></h2>
		</div>
		<div id="headimg">&nbsp;</div>
	</div>
	<div id="topnavi">
		<div class="spacing1">
			<ul>
				<li><a href="#" title="item">HOME</a></li>
				<li class="selected"><a href="stock-add.jsp">Add Stock Details</a></li>
                                <li><a href="stock-delete.jsp">Delete Stock Details</a></li>
				<li><a href="stock-modfy.jsp">Modify Stock Details</a></li>
				<li><a href="stock-view.jsp">View Stock Details</a></li>
				
				
			</ul>
		</div>
	</div>
	<div id="bodybox">
		<div id="subnavi">
			<ul>
		<li class="selected"><a href="medical-details.jsp">Medical Details</a></li>
			<li><a href="medicin-details.jsp">Medicine Detalis</a></li>
			<li><a href="suppliermain.jsp">Supplier</a></li>
			<li><a href="stock-details.jsp">Stock Details</a></li>
                        <li><a href="index.html">Logout</a></li>
                        </ul>
		</div>
		<div id="content">
			<h1>Supplier-Details</h1>
		
<form action="stock-delete-act.jsp">
<h2  align="center">DELETE RECORD</h2>

<table align="center">
    <br><td>User Name<input type="text" name="name" id="id"/></td>
    <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<br><input type="submit" value="Delete">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="reset" value="cancel"></td></tr>
    
    
</table>

</form> 
</body>
</html>
