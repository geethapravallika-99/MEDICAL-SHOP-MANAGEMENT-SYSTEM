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
				<li><a href="adminhome.jsp" title="item">HOME</a></li>
				<li class="selected"><a href="stock-add.jsp">Add Details</a></li>
				<li><a href="stock-modfy.jsp">Modify Details</a></li>
				<li><a href="purchaseview.jsp">View Details</a></li>
				
			</ul>
		</div>
	</div>
	<div id="bodybox">
		<div id="subnavi">
			<ul>
				
			<li class="selected"><a href="medical-details.jsp">Medical Details</a></li>
			<li><a href="medicin-details.jsp">Medicine Detalis</a></li>
			<li><a href="purchasedetails.jsp">Purchase Details</a></li>
			<li><a href="stock-details.jsp">Stock Details**</a></li>
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
			<h1>
                            <%@ page language="java" import="java.sql.*,java.io.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="databaseconnection.*"%>

<% 

try{ 
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/medicalshop","root","root");
        System.out.println("2");
	PreparedStatement pst=con.prepareStatement("select * from purchase");
   
	ResultSet rs=pst.executeQuery();
        %>
        
        <center>   <table style="width:0%" border="2"></center>
         
  <tr>
        <th>Type</th>
        <th>Medicine Name</th>
        <th>Company Name</th>
        <th>Supplier Name</th>
        <th>Date</th>
         <th>Net wt</th>
        <th>Quantity</th>
        
         </tr>

<%
       
	while(rs.next()){
            %><tr><td><%=rs.getString(1)%></td>
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(3)%></td>                
                <td><%=rs.getString(4)%></td>
                <td><%=rs.getString(5)%></td>
               <td><%=rs.getString(6)%></td>
                <td><%=rs.getString(7)%></td>                
               
        </tr>
        
        
      <%  }
        
        %> </table>

<% }
	catch(Exception e)
	{
		System.out.println(e);
	}
	%>
  