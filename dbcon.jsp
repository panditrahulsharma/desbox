<%@ page import="java.io.*,java.sql.*" %>
<%
    String contentType = request.getContentType();
     response.setContentType("text/html");
    Connection con=null;
     Connection con1=null;
      Connection con2=null;
    Statement st=null;
     Statement st1=null;
      Statement st2=null;
       Statement st3=null;
         Statement st4=null;
    ResultSet rs=null; 
    ResultSet rs1=null;
    ResultSet rs2=null;
    ResultSet rs3=null;
    ResultSet rs4=null;
  

   try
      {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/user2","root","admin");
          }
        catch(ClassNotFoundException e1)
       {
           out.println(e1);
       }
       catch(SQLException e7)
       {
           out.println(e7);
       }
         
        %>  
