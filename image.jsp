<%@ page import="java.sql.*,java.io.*,java.util.*" %> 
<%
  int id =  Integer.parseInt(request.getParameter("imgid"));
  try{      
      
     
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tour","root","");      
    Statement st=con.createStatement();
    String strQuery = "select images from package where p_id="+id;
    ResultSet rs = st.executeQuery(strQuery);

    String imgLen="";
    if(rs.next()){
      imgLen = rs.getString(1);
       }  
    rs = st.executeQuery(strQuery);
    if(rs.next()){
      int len = imgLen.length();
      byte [] rb = new byte[len];
      InputStream readImg = rs.getBinaryStream(1);
      int index=readImg.read(rb, 0, len);  
      st.close();
      response.reset();
      response.getOutputStream().write(rb,0,len); 
      response.getOutputStream().flush();        
    }
  }
  catch (Exception e){
    e.printStackTrace();
  }
%>

<%


 int id1 =  Integer.parseInt(request.getParameter("imgid"));
  try{      
      
     
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tour","root","");      
    Statement st=con.createStatement();
    String strQuery = "select hotel_image from hotels where hotel_id="+id1;
    ResultSet rs = st.executeQuery(strQuery);

    String imgLen="";
    if(rs.next()){
      imgLen = rs.getString(1);
       }  
    rs = st.executeQuery(strQuery);
    if(rs.next()){
      int len = imgLen.length();
      byte [] rb = new byte[len];
      InputStream readImg = rs.getBinaryStream(1);
      int index=readImg.read(rb, 0, len);  
      st.close();
      response.reset();
      response.getOutputStream().write(rb,0,len); 
      response.getOutputStream().flush();        
    }
  }
  catch (Exception e){
    e.printStackTrace();
  }







%>