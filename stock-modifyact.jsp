<%@page info="java output for"%>
<%@page import = "java.sql.*"%>
<body background="a.jpg">
</body>
<%
  
      String priceperitem=request.getParameter("priceperitem");
 String name=request.getParameter("name");
      String mfgdate=request.getParameter("mfgdate");
      String expirydate=request.getParameter("expirydate");
 //out.println(bugid+" "+bugsum+" "+bugstat+" "+bugpri);
 try
 {
	 Class.forName("com.mysql.jdbc.Driver");
     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medicalshop", "root", "root");

    

     PreparedStatement pss1=con.prepareStatement("UPDATE stock SET priceperitem=? WHERE name=?");
	 pss1.setString(1,priceperitem);
     pss1.setString(2,name);
	 pss1.executeUpdate();

    // PreparedStatement pss2=con.prepareStatement("UPDATE stock SET totalcost=? WHERE name=?");
	// pss2.setString(1,totalcost);
     //pss2.setString(2,name);
	// pss2.executeUpdate();
         
             PreparedStatement pss2=con.prepareStatement("UPDATE stock SET mfgdate=? WHERE name=?");
	 pss2.setString(1,mfgdate);
     pss2.setString(2,name);
	 pss2.executeUpdate();
         
             PreparedStatement pss3=con.prepareStatement("UPDATE stock SET expirydate=? WHERE name=?");
	 pss2.setString(1,expirydate);
     pss2.setString(2,name);
	 pss2.executeUpdate();
         

     con.close();
     out.println("OK MODIFIED");
 }
 catch(Exception e)
 {
	 out.println(e);
 }

%>
