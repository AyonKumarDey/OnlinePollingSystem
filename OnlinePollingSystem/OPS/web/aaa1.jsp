<%-- 
    Document   : aaa1
    Created on : 14 Dec, 2016, 5:27:09 PM
    Author     : Ayon Kumar Dey
--%>

<%@page import="java.util.List"%>
<%@page import="table.Voter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
            <%
                org.hibernate.Session s = hib.HibDAOLayer.getHibSession();
                org.hibernate.Transaction t = s.beginTransaction();
                org.hibernate.Criteria c = s.createCriteria(table.Voter.class);
                List<Voter> data = c.list();
            %>
            <div style= "margin-top:-150px;"> <pre>
<h1>Hello World!</h1>
<pre>



  <form action="aaa2.jsp">     
      VOTER ID   :   <select name="vid" id="id">
         <option value="0" id="mySelect" onchange="myFunction()">-------------------------select-----------------------------</option>
                        <%
                            for (Voter ob : data) {
                        %>
                        <option value="<%=ob.getVid()%>" type="submit"><%=ob.getVid()%></option>  
                        <% }%>
                        </select>

                        <input id="btn" type="submit" class="button red" value="SELECT ID" name="submit">
                </pre>
        </form></div>
</pre>
                        
<script>
function myFunction() {
    var x = document.getElementById("mySelect").value;
    document.getElementById("demo").innerHTML = "You selected: " + x;
      
}

</script>
<% 
    String st="<script>document.writeln(x)</script>";
    out.println("value="+st); 
%>

</body>
</html>
