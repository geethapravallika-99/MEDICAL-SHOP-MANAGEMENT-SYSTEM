<%@page info="java output for"%>
<%@page import = "java.sql.*"%>
<body background="a.jpg">
</body>
<%
 String gen=request.getParameter("gen");
 String name=request.getParameter("name");
 String company=request.getParameter("company");
 String netwt=request.getParameter("netwt");
 //out.println(bugid+" "+bugsum+" "+bugstat+" "+bugpri);
 try
 {
	 Class.forName("com.mysql.jdbc.Driver");
     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medicalshop", "root", "root");

     PreparedStatement pss=con.prepareStatement("UPDATE medcinrecord SET name=? WHERE gen=?");
	 pss.setString(1,name);
     pss.setString(2,gen);
	 pss.executeUpdate();

     PreparedStatement pss1=con.prepareStatement("UPDATE medcinrecord SET company=? WHERE gen=?");
	 pss1.setString(1,company);
     pss1.setString(2,gen);
	 pss1.executeUpdate();

     PreparedStatement pss2=con.prepareStatement("UPDATE medcinrecord SET netwt=? WHERE gen=?");
	 pss2.setString(1,netwt);
     pss2.setString(2,gen);
	 pss2.executeUpdate();

     con.close();
     out.println("OK MODIFIED");
 }
 catch(Exception e)
 {
	 out.println(e);
 }

%>
