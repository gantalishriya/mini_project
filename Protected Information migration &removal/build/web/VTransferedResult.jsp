<%-- 
    Document   : VTransferedResult
    Created on : 30 Sep, 2020, 10:35:26 AM
    Author     : KishanVenky
--%>

<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String id=request.getParameter("id");
try{
    String query="update trans_req set result='Transfered' where id='"+id+"'";
int i=Queries.getExecuteUpdate(query);
if(i>0){
    %>
    <script type="text/javascript">
        window.alert("Transfer Result Sent To Owner");
        window.location="VTransferedFiles.jsp";
    </script>
    <%  
}else{
%>
    <script type="text/javascript">
        window.alert("Transfer Result Sendding Failed");
        window.location="VTransferedFiles.jsp";
    </script>
    <%  
}

}catch(Exception e){
  out.println(e);
}
%>