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
  //s1=request.getParameter("k1");
   s2=request.getParameter("k2");
try
{  st3=con.createStatement();
  rs=st3.executeQuery("select name from profile where email='"+s+"'");
  while(rs.next())
  {
    s10=rs.getString(1);
  }
}
catch(Exception mn)
{
  out.println(mn);
}
try
{  st4=con.createStatement();
  rs1=st4.executeQuery("select curdate()");
  while(rs1.next())
  {
    s11=rs1.getString(1);
  }
}
catch(Exception mn1)
{
  out.println(mn1);
}

         try
      {
       st1=con.createStatement();
       st2=con.createStatement();
        st2.executeUpdate("insert into join1(email,classcode,dat,name) values('"+s+"','"+s2+"','"+s11+"','"+s10+"')");
      response.sendRedirect("index.jsp");

      }
      catch(Exception e)
      {
out.println(e);
      }

    %>