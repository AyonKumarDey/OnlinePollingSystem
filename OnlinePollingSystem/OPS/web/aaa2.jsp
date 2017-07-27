<%-- 
    Document   : aaa2
    Created on : 14 Dec, 2016, 5:38:05 PM
    Author     : Ayon Kumar Dey
--%>

<%@page import="java.util.List"%>
<%@page import="table.Voter"%>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="aaa1.jsp"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%
            String vid = request.getParameter("vid");
            Session s = hib.HibDAOLayer.getHibSession();
            Transaction t = s.beginTransaction();
            Criteria c = s.createCriteria(table.Voter.class);
            c.add(Restrictions.eq("vid", vid));
            List<Voter> data = c.list();

        %>

        <%    for (Voter ob : data) {
        %>
    <center>
        <font color="white" size="5.8">
        FILL UPDATE DETAILS HERE
            <pre>
            ID    :   <input type="text" name="vid" value="<%=ob.getVid()%>">
            
            NAME :   <input type="text" name="vname" value="<%=ob.getVname()%>">
            
            AGE  :    <select name="age">
                                  <option value="<%=ob.getAge()%>"><%=ob.getAge()%></option>
                                <c:forEach var="i" begin="20" end="100">
                                  <option value="${i}">${i}</option>   
                                </c:forEach>
                
                                </select>
            
            GENDER:   <select name="sex">
                                <option value="<%=ob.getSex()%>"><%=ob.getSex()%></option>
                                <option value="M">Male</option>
                                <option value="F">Female</option>
                                </select>
            
            CITY :   <input type="text" name="city" value="<%=ob.getCity()%>">
                
                
         
            </pre>
  
        <% }%>
    </body>
</html>
