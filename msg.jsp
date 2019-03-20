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
  s1=request.getParameter("k1");
  s2=request.getParameter("k2");
  s4=(new java.util.Date()).toLocaleString();
          try
          {
            st=con.createStatement();
            rs=st.executeQuery("select name from profile where email='"+s+"'");
            if(rs.next())
            {
              s3=rs.getString(1);
            }
          }
          catch(Exception e1)
          {
            out.println(e1);
          }

         try
      {
       st1=con.createStatement();
        st1.executeUpdate("insert into message(classcode,message,pic,pic1,dat,name) values('"+s1+"','"+s2+"','"+s+"','null','"+s4+"','"+s3+"')");
      response.sendRedirect("index.jsp");

      }
      catch(Exception e)
      {
out.println(e);
      }

    %>