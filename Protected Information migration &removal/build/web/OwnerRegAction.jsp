<%-- 
    Document   : OwnerRegAction
    Created on : 29 Sep, 2020, 5:52:17 PM
    Author     : KishanVenky
--%>
        
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
try{
    String name=request.getParameter("name");
    String email=request.getParameter("email");
    String mobile=request.getParameter("mobile");
    String address=request.getParameter("address");
    String uname=request.getParameter("uname");
    String pwd=request.getParameter("pwd");
    
    String query="insert into owner values(null,'"+name+"','"+email+"','"+mobile+"','"+address+"','"+uname+"','"+pwd+"','waiting')";
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sdata","root" , "root");
    Statement st=con.createStatement();
    
    int i=Queries.getExecuteUpdate(query);
    if(i>0){
      %>
      <script type='text/javascript'>
          window.alert("Registration Successful..!!");
          window.location="Owner.jsp";
      </script>
      <%
    }else{
%>
      <script type='text/javascript'>
          window.alert("Registration Failed..!!");
          window.location="OwnerReg.jsp";
      </script>
      <%
}
}catch(Exception e){
    out.println(e);
}



%>