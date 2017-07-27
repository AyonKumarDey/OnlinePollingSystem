
<%@taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page errorPage="error.jsp" %>
<jsp:useBean class="table.Voter" id="v"/>
<jsp:setProperty name="v"  property="*"/>


<%
    org.hibernate.Session s=hib.HibDAOLayer.getHibSession();
    org.hibernate.Transaction t=s.beginTransaction();
    s.save(v);
    t.commit();
%>
<s:set var="msg" value="VOTER ADDED SUCCESSFULLY" scope="request"/>

<jsp:forward page="addvoter.jsp"/>