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
                                <li><a href="medcl-add.jsp">Add Record</a></li>
				<li><a href="medcl-delet.jsp">Delete Record</a></li>
				<li><a href="medical-update.jsp">Modify Records</a></li>
				<li class="selected"><a href="medcl-view.jsp">View Records</a></li>
				
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
			<h1>Medical-Details</h1>
                            <%@ page language="java" import="java.sql.*,java.io.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="databaseconnection.*"%>

<% 

try{ 
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/medicalshop","root","root");
        System.out.println("2");
	PreparedStatement pst=con.prepareStatement("select * from medicalrecord");
   
	ResultSet rs=pst.executeQuery();
        %>
        
        <center>   <table style="width:80%" border="2"></center>
         
  <tr>
        <th>Shopid</th>
        <th>Shopname</th>
        <th>Ownername</th>
        <th>Address</th>
        <th>Contact</th>
  
        
        
     
 </tr>

<%
       
	while(rs.next()){
            %><tr><td><%=rs.getString(1)%></td>
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(3)%></td>                
                <td><%=rs.getString(4)%></td>
                <td><%=rs.getString(5)%></td>
               
        </tr>
        
        
      <%  }
        
        %> </table>

<% }
	catch(Exception e)
	{
		System.out.println(e);
	}
	%>
