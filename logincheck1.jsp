<%@ page import="java.io.*,java.sql.*" %>
<%@  include file="dbcon.jsp" %>
<%!  int m1=0;
      String s="",s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9="",s10="",s11="",s12="",room="";
      HttpSession session;
   %>

    <%
     s1=request.getParameter("r1");
      s2=request.getParameter("r2");
      try
      {
           st=con.createStatement();
           rs=st.executeQuery("select * from profile where email='"+s1+"' and password='"+s2+"'");
           if(rs.next())
           {
           	 session=request.getSession();
           	  session.setAttribute("room",s1);
           	  response.sendRedirect("index.jsp");
           }
           else
                  
                {
                  response.sendRedirect("login.jsp");
                       
                }
      }
      catch(Exception e)
      {
      	out.println(e);
      }
    %>