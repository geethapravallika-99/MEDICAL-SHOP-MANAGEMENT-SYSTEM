 <%@page info="java output for"%>
<%@page import = "java.sql.*"%>
<body background="a.jpg">
</body>
<%
 try
 {
	 Class.forName("com.mysql.jdbc.Driver");
     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medicalshop", "root", "root");
     PreparedStatement pss=con.prepareStatement("SELECT * FROM supplier");
	 ResultSet rs=pss.executeQuery();
         %><br><br><center><table style="width:40%" border="2"></center>
	 <tr><th><b>id</th>
	 <th><b>suppliername</th>
	 <th><b>username</th>
	 <th><b>password</th>
         <th><b>Update</th></tr>
	<%
	 while(rs.next())
	 {
	  String id=rs.getString("id");
      String suplliername=rs.getString("suplliername");
      String username=rs.getString("username");
      String password=rs.getString("password");
	  %>
	  <tr><FORM METHOD=POST ACTION="suplmodact.jsp">
      <td><INPUT TYPE=TEXT value=<%=id%> name="id" READONLY></td>
      <td><INPUT TYPE=TEXT value=<%=suplliername%> name="suplliername"></td>
      <td><INPUT TYPE=TEXT value=<%=username%> name="username"></td>
     <td> <INPUT TYPE=TEXT value=<%=password%> name="password"></td>
	  <td><INPUT TYPE=SUBMIT value="MODIFY" > </FORM></td>
	
      <INPUT TYPE=HIDDEN value=<%=id%> name="id">
      <INPUT TYPE=HIDDEN value=<%=suplliername%> name="suplliername">
      <INPUT TYPE=HIDDEN value=<%=username%> name="username">
      <INPUT TYPE=HIDDEN value=<%=password%> name="password">
	 
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
