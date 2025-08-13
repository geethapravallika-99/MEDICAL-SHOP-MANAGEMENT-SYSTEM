<%@page info="java output for"%>
<%@page import = "java.sql.*"%>
<body background="a.jpg">
</body>
<%
 String shopid=request.getParameter("shopid");
 String shopename=request.getParameter("shopename");
 String address=request.getParameter("address");
 String contact=request.getParameter("contact");
 //out.println(bugid+" "+bugsum+" "+bugstat+" "+bugpri);
 try
 {
	 Class.forName("com.mysql.jdbc.Driver");
     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medicalshop", "root", "root");

     PreparedStatement pss=con.prepareStatement("UPDATE medicalrecord SET shopename=? WHERE shopid=?");
	 pss.setString(1,shopename);
     pss.setString(2,shopid);
	 pss.executeUpdate();

     PreparedStatement pss1=con.prepareStatement("UPDATE medicalrecord SET address=? WHERE shopid=?");
	 pss1.setString(1,address);
     pss1.setString(2,shopid);
	 pss1.executeUpdate();

     PreparedStatement pss2=con.prepareStatement("UPDATE medicalrecord SET contact=? WHERE shopid=?");
	 pss2.setString(1,contact);
     pss2.setString(2,shopid);
	 pss2.executeUpdate();

     con.close();
     out.println("OK MODIFIED");
     response.sendRedirect("medical-details.jsp?msgg='Modified Successfully'");
 }
 catch(Exception e)
 {
	 out.println(e);
 }

%>
