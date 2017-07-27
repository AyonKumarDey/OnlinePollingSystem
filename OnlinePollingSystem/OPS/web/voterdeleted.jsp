
<%@page errorPage="error.jsp" %>
<%@page import="table.Voter"%>
<%@page import="org.hibernate.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    String vid=request.getParameter("vid");
    Session s=hib.HibDAOLayer.getHibSession();
    Transaction t=s.beginTransaction();
    Voter temp=new Voter();
    temp.setVid(vid);
    s.delete(temp);
    t.commit();
%>



<c:set  var="msg" value="VOTER DELETED SUCCESSFULLY!!" scope="request"/>

<jsp:include page="deletevoter.jsp"/>

