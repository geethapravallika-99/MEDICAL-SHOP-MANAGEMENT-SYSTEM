<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>

<html>
<head>

</head>

<body>

<%
    String l = request.getParameter("name");
    System.out.println(l);
    String m = request.getParameter("company");
    System.out.println(m);
    String n = request.getParameter("quantity");
    System.out.println(n);
    
    String o = request.getParameter("priceperitem");
    System.out.println(o);
    String p = request.getParameter("totalcost");
    System.out.println(l);
    String q = request.getParameter("mfgdate");
    System.out.println(q);
    String r = request.getParameter("expirydate");
    System.out.println(r);
    String s = request.getParameter("date");
    System.out.println(s);
    String t = request.getParameter("type");
    System.out.println(t);
    
    

    
    try{
       
       // String user=null;
        //String password=null;
	Class.forName("com.mysql.jdbc.Driver");	
        Connection co = DriverManager.getConnection("jdbc:mysql://localhost:3306/medicalshop","root","root");

PreparedStatement ps = co.prepareStatement("insert into stock values(?,?,?,?,?,?,?,?,?)");

ps.setString(1,l);
ps.setString(2,m);
ps.setString(3,n);

ps.setString(4,o);
ps.setString(5,p);
ps.setString(6,q);
ps.setString(7,r);
ps.setString(8,s);
ps.setString(9,t);



ps.executeUpdate();

//out.print(Successfully Registered);

response.sendRedirect("stock-details.jsp?message=success");
out.println("Details Added Successfully");
}
catch(Exception e1)
{
out.println(e1.getMessage());
}


%>

    </body>
</html>

