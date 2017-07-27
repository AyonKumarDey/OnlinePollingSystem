
<%@taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page errorPage="error.jsp" %>
<jsp:useBean class="table.Candidate" id="c"/>
<jsp:setProperty name="c"  property="*"/>


<%
    org.hibernate.Session s=hib.HibDAOLayer.getHibSession();
    org.hibernate.Transaction t=s.beginTransaction();
    s.save(c);
    t.commit();
   
%>
<s:set var="msg" value="CANDIDATE ADDED SUCCESSFULLY" scope="request"/>

<jsp:forward page="addcandidate.jsp"/>
