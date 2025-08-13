<?xml version="1.0"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>MEDICAL SHOP</title>
<style type="text/css" media="all">
	@import "global2.css";
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
				<li><a href="medcin-add.jsp">Add Record</a></li>
				<li><a href="medcin-delet.jsp">Delete Record</a></li>
				<li><a href="mdcnmod.jsp">Modify Records</a></li>
				<li class="selected"><a href="medcin-view.jsp">View Records</a></li>
				
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
                    <%@page info="java output for"%>
                    <%@page info="java output for"%>
<%@page import = "java.sql.*"%>
<body background="a.jpg">
</body>
<%
 try
 {
	 Class.forName("com.mysql.jdbc.Driver");
     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medicalshop", "root", "root");
     PreparedStatement pss=con.prepareStatement("SELECT * FROM medcinrecord");
	 ResultSet rs=pss.executeQuery();
         %><br><br><center><table style="width:40%" border="2"></center>
	 <tr><th><b>Type</th>
	 <th><b>name</th>
	 <th><b>company</th>
	 <th><b>netwt</th>
         <th><b>Update</th></tr>
	<%
	 while(rs.next())
	 {
	  String gen=rs.getString("gen");
      String name=rs.getString("name");
      String company=rs.getString("company");
      String netwt=rs.getString("netwt");
	  %>
	  <tr><FORM METHOD=POST ACTION="mdcnmodact.jsp">
      <td><INPUT TYPE=TEXT value=<%=gen%> name="gen" READONLY></td>
      <td><INPUT TYPE=TEXT value=<%=name%> name="name"></td>
      <td><INPUT TYPE=TEXT value=<%=company%> name="company"></td>
     <td> <INPUT TYPE=TEXT value=<%=netwt%> name="netwt"></td>
	  <td><INPUT TYPE=SUBMIT value="MODIFY" > </FORM></td>
	
      <INPUT TYPE=HIDDEN value=<%=gen%> name="gen">
      <INPUT TYPE=HIDDEN value=<%=name%> name="name">
      <INPUT TYPE=HIDDEN value=<%=company%> name="company">
      <INPUT TYPE=HIDDEN value=<%=netwt%> name="netwt">
	 
	  </FORM>
	  <%
	 }%></table></center>
	 <%
 }
 catch(Exception e)
 {
	 out.println(e);
 }

%>
