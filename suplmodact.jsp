<%@page info="java output for"%>
<%@page import = "java.sql.*"%>
<body background="a.jpg">
</body>
<%
 String id=request.getParameter("id");
 String suplliername=request.getParameter("suplliername");
 String username=request.getParameter("username");
 String password=request.getParameter("password");
 //out.println(bugid+" "+bugsum+" "+bugstat+" "+bugpri);
 try
 {
	 Class.forName("com.mysql.jdbc.Driver");
     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medicalshop", "root", "root");

     PreparedStatement pss=con.prepareStatement("UPDATE supplier SET suplliername=? WHERE id=?");
	 pss.setString(1,suplliername);
     pss.setString(2,id);
	 pss.executeUpdate();

     PreparedStatement pss1=con.prepareStatement("UPDATE supplier SET username=? WHERE id=?");
	 pss1.setString(1,username);
     pss1.setString(2,id);
	 pss1.executeUpdate();

     PreparedStatement pss2=con.prepareStatement("UPDATE supplier SET password=? WHERE id=?");
	 pss2.setString(1,password);
     pss2.setString(2,id);
	 pss2.executeUpdate();

     con.close();
     out.println("OK MODIFIED");
 }
 catch(Exception e)
 {
	 out.println(e);
 }

%>
