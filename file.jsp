<%@ page import="java.io.*,java.sql.*, java.util.*" %>
<%@ include file="dbcon.jsp" %>
<%! String s="",s1="",s3="",s4="",m1=""; 
int m2=0;
%>

<%    s1=(String)session.getAttribute("room");
        if(s1==null)
        {
            response.sendRedirect("login.jsp");

        }
            response.setContentType("text/html");
             String m1=(String)session.getAttribute("code");
       
     m2=(int)(Math.random()*99999999);
      out.println("classcode="+s1);

  s4=(new java.util.Date()).toLocaleString();
          try
          {
            st=con.createStatement();
            rs=st.executeQuery("select name from profile where email='"+s1+"'");
            if(rs.next())
            {
              s3=rs.getString(1);
            }
          }
          catch(Exception e1)
          {
            out.println(e1);
          }
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

        FileOutputStream fileOut = new FileOutputStream("C:/Program Files/Apache Software Foundation/Tomcat 9.0/webapps/desbox/document/"+m2+".jpg");
        fileOut.write(dataBytes, startPos, (endPos - startPos));
        fileOut.flush();
        fileOut.close();
   

       try
       {
           st=con.createStatement();
          st1=con.createStatement();
            st1.executeUpdate("insert into message(classcode,message,pic,pic1,dat,name) values('"+m1+"','null','"+s1+"','"+m2+".jpg','"+s4+"','"+s3+"')");
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
