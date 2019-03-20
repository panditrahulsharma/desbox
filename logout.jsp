
<%@ page import="java.io.*,java.sql.*" %>
<%@ include file="dbcon.jsp" %>

<%

            session.invalidate(); 
            response.sendRedirect("login.jsp");                    
%>