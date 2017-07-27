<%@page errorPage="error.jsp" %>
<%@page import="table.Candidate"%>
<%@page import="org.hibernate.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${sessionScope.vid eq null}">
    <c:set var="msg" value="PLEASE LOGIN TO ACCESS"/>
    <jsp:forward page="login.jsp"/>
</c:if>


<%
    String cid=request.getParameter("cid");
    Session s=hib.HibDAOLayer.getHibSession();
    Transaction t=s.beginTransaction();
    Candidate temp=new Candidate();
    temp.setCid(cid);
    s.delete(temp);
    t.commit();
%>



<c:set  var="msg" value="CANDIDATE DELETED SUCCESSFULLY!!" scope="request"/>

<jsp:include page="deletecandidate.jsp"/>
