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
			<h2>DESIGNED BY DEEPTHI.T</h2>
		</div>
		<div id="headimg">&nbsp;</div>
	</div>
	<div id="topnavi">
		<div class="spacing1">
			<ul>
				<li><a href="#" title="item">HOME</a></li>
				<li class="selected"><a href="medcin-add.jsp">Add Record</a></li>
				<li><a href="medcin-delet.jsp">Delete Record</a></li>
				<li><a href="#">Modify Records</a></li>
				<li><a href="medcin-view.jsp">View Records</a></li>
				
			</ul>
		</div>
	</div>
	<div id="bodybox">
		<div id="subnavi">
			<ul>
				
			<li class="selected"><a href="medical-details.jsp">Medical Details</a></li>
			<li><a href="medicin-details.jsp">Medicine Details**</a></li>
			<li><a href="adminlogin.html">Purchase Details</a></li>
			<li><a href="stock-details.jsp">Stock Details</a></li>
			<li><a href="registration.html">Sales Details</a></li>
                        <li><a href="index.jsp">Expiry Details</a></li>
			<li><a href="ownerlogin.html">Recorder Status</a></li>
			<li><a href="userlogin.html">Suppliers</a></li>
			<li><a href="adminlogin.html">Suppliers Bill Details</a></li>
			<li><a href="cloudserver.html">Customer Bill Details</a></li>
                        <li><a href="cloudserver.html">Logout</a></li>

			</ul>
		</div>
		<div id="content">
			<h1>Medicine-Details</h1>
                            <%@ page language="java" import="java.sql.*,java.io.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="databaseconnection.*"%>
<% 
String roll=request.getParameter("id");
try{ 
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/medicalshop","root","root");
System.out.println("2");
	PreparedStatement pst=con.prepareStatement("delete from purchase where type=?");
        pst.setString(1, roll);
	pst.executeUpdate();
	
	out.println("<center><h1>"+roll+" Deleted Successfuly</h1><br><a href=\"./medicin-details.jsp\">Back</a></center>");
}
	catch(Exception e)
	{
		System.out.println(e);
	}
	%>