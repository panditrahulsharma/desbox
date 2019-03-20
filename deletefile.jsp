<%@ page import="java.io.*,java.sql.*" %>
<%@  include file="dbcon.jsp" %>
<%!  int m1=0,m2=0;
      String s="",s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9="",s10="",s11="",s12="";
   %>
   <%    s=(String)session.getAttribute("room");
        if(s==null)
        {
            response.sendRedirect("index.jsp");
        }
            response.setContentType("text/html");

    %>
    <%
  s1=request.getParameter("file");



         try
      {
       st1=con.createStatement();
       st2=con.createStatement();
    
      st2.executeUpdate("delete from message where mid='"+s1+"'");
      response.sendRedirect("index.jsp");

      }
      catch(Exception e)
      {
out.println(e);
      }

    %>