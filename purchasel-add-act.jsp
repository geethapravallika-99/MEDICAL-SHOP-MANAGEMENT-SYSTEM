<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>

<html>
<head>

</head>

<body>

<%
    String l = request.getParameter("type");
    System.out.println(l);
    String m = request.getParameter("medicinename");
    System.out.println(m);
    String n = request.getParameter("companyname");
    System.out.println(n);
    String f = request.getParameter("suppliername");
    System.out.println(f);
    String p = request.getParameter("date");
    System.out.println(p);
    String netwt = request.getParameter("netwt");
    System.out.println(f);
    String quantity = request.getParameter("quantity");
    System.out.println(p);
    
    

    
    try{
       
       // String user=null;
        //String password=null;
	Class.forName("com.mysql.jdbc.Driver");	
        Connection co = DriverManager.getConnection("jdbc:mysql://localhost:3306/medicalshop","root","root");

PreparedStatement ps = co.prepareStatement("insert into purchase values(?,?,?,?,?,?,?)");

ps.setString(1,l);
ps.setString(2,m);
ps.setString(3,n);
ps.setString(4,f);
ps.setString(5,p);
ps.setString(6,netwt);
ps.setString(7,quantity);



ps.executeUpdate();

//out.print(Successfully Registered);

response.sendRedirect("purchasedetails.jsp?message=success");
out.println("Details Added Successfully");
}
catch(Exception e1)
{
out.println(e1.getMessage());
}


%>

    </body>
</html>

