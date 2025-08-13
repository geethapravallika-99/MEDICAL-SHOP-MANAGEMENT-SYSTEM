<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>

<html>
<head>

</head>

<body>

<%
    String l = request.getParameter("shopid");
    System.out.println(l);
    String m = request.getParameter("shopename");
    System.out.println(m);
    String n = request.getParameter("ownername");
    System.out.println(n);
    String f = request.getParameter("address");
    System.out.println(f);
    String p = request.getParameter("contact");
    System.out.println(p);
    
    

    
    try{
       
       // String user=null;
        //String password=null;
	Class.forName("com.mysql.jdbc.Driver");	
        Connection co = DriverManager.getConnection("jdbc:mysql://localhost:3306/medicalshop","root","root");

PreparedStatement ps = co.prepareStatement("insert into medicalrecord values(?,?,?,?,?)");

ps.setString(1,l);
ps.setString(2,m);
ps.setString(3,n);
ps.setString(4,f);
ps.setString(5,p);



ps.executeUpdate();

//out.print(Successfully Registered);

response.sendRedirect("medical-details.jsp?message=success");
out.println("Record Added Successfully");
}
catch(Exception e1)
{
out.println(e1.getMessage());
}


%>

    </body>
</html>

