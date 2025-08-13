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
				<li class="selected"><a href="stock-add.jsp">Add Stock Details</a></li>
				<li><a href="stock-modfy.jsp">Modify Stock Details</a></li>
				<li><a href="stock-view.jsp">View Stock Details</a></li>
			</ul>
		</div>
	</div>
	<div id="bodybox">
		<div id="subnavi">
			<ul>
				
		<li><a href="medical-details.jsp">Medical Details</a></li>
			<li class="selected"><a href="medicin-details.jsp">Medicine Detalis</a></li>
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
     PreparedStatement pss=con.prepareStatement("SELECT * FROM stock");
	 ResultSet rs=pss.executeQuery();
         %><br><br><center><table style="width:40%" border="2"></center>
	 <th>name</th>
   
       
        <th>priceperitem</th>
     
        <th>mfgdate</th>
        <th>expirydate</th>
         <th><b>Update</th></tr>
	<%
	 while(rs.next())
	 {
	  String name=rs.getString("name");
      String quantity=rs.getString("quantity");
      String priceperitem=rs.getString("priceperitem");
     
      String mfgdate=rs.getString("mfgdate");
      String expirydate=rs.getString("expirydate");
   
    
	  %>
	  <tr><FORM METHOD=POST ACTION="stock-modifyact.jsp">     
      <td><INPUT TYPE=TEXT value=<%=name%> name="name"></td>
       
      <td><INPUT TYPE=TEXT value=<%=priceperitem%> name="priceperitem"></td>
   
      <td> <INPUT TYPE=TEXT value=<%=mfgdate%> name="mfgdate"></td>
       <td> <INPUT TYPE=TEXT value=<%=expirydate%> name="expirydate"></td>
       
	  <td><INPUT TYPE=SUBMIT value="MODIFY" > </FORM></td>
	
      
      <INPUT TYPE=HIDDEN value=<%=name%> name="name">
    
      <INPUT TYPE=HIDDEN value=<%=priceperitem%> name="priceperitem">
   
             <INPUT TYPE=HIDDEN value=<%=mfgdate%> name="mfgdate">
      <INPUT TYPE=HIDDEN value=<%=expirydate%> name="expirydate">
	 
	 
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
