<%@ page import="java.io.*,java.sql.*, java.util.*" %>
<%@ include file="dbcon.jsp" %>
<%! String s="",s1=""; 
int m1=0,m2=0;
%>

<%    s1=(String)session.getAttribute("room");
        if(s1==null)
        {
            response.sendRedirect("login.jsp");

        }
            response.setContentType("text/html");
             String k2=(String)session.getAttribute("code");
       int m1=Integer.parseInt(k2);
     m2=(int)(Math.random()*99999999);
      out.println("classcode="+s1);
 %>
   
   <%



    if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0))
 {

        DataInputStream in = new DataInputStream(request.getInputStream());
        //we are taking the length of Content type data
        int formDataLength = request.getContentLength();
        byte dataBytes[] = new byte[formDataLength];
        int byteRead = 0;
        int totalBytesRead = 0;
        //this loop converting the uploaded file into byte code
    
        while (totalBytesRead < formDataLength)
 {
            byteRead = in.read(dataBytes, totalBytesRead,formDataLength);
            totalBytesRead += byteRead;
            }

        String file = new String(dataBytes);
      
        String saveFile = file.substring(file.indexOf("filename=\"") + 10);
    String extt=new String();      
saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
       
saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));

int lastIndex = contentType.lastIndexOf("=");
        String boundary = contentType.substring(lastIndex + 1,contentType.length());
        int pos;
    
        pos = file.indexOf("filename=\"");
        pos = file.indexOf("\n", pos) + 1;
        pos = file.indexOf("\n", pos) + 1;
        pos = file.indexOf("\n", pos) + 1;
        int boundaryLocation = file.indexOf(boundary, pos) - 4;
        int startPos = ((file.substring(0, pos)).getBytes()).length;
        int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;

        
out.println(saveFile);

        FileOutputStream fileOut = new FileOutputStream("C:/Program Files/Apache Software Foundation/Tomcat 9.0/webapps/desbox/document/"+m2+".pdf");
        fileOut.write(dataBytes, startPos, (endPos - startPos));
        fileOut.flush();
        fileOut.close();
   

       try
       {
           st=con.createStatement();
          st1=con.createStatement();
            st1.executeUpdate("insert into message(classcode,message,pic,pic1) values('"+m1+"','null','"+s1+"','"+m2+".pdf')");
     response.sendRedirect("index.jsp");

       }

       catch(SQLException e3)
       {
           out.println(e3);
       }
       catch(Exception e4)
       {
           out.println(e4);
       }
     }
        %>
