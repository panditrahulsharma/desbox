<%@ page import="java.io.*,java.sql.*" %>
<%@ include file="dbcon.jsp" %>
<%!  int m1=0;
      String s="",s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9="",s10="",s11="",s12="",room="";
       HttpSession session;
   %>
<%
 s1=request.getParameter("p1");
  s2=request.getParameter("p2");
   s3=request.getParameter("p3");
   out.println(s1);
   out.println(s2);
   out.println(s3);
   try
   {
     st=con.createStatement();
     st.executeUpdate("insert into profile(name,email,password,pic) values('"+s1+"','"+s2+"','"+s3+"','null')");
            session=request.getSession();
           session.setAttribute("room",s2);
           response.sendRedirect("index.jsp");

   }
   catch(Exception e)
   {
   	out.println(e);
     response.sendRedirect("login.jsp");
   }
%>