<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<link rel="stylesheet" href="res/Site.css">
<%@page import="java.util.List"%>

<%@page import="table.Voter"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="updatevoterbyid.jsp"/>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${sessionScope.vid eq null}">
    <c:set var="msg" value="PLEASE LOGIN TO ACCESS"/>
    <jsp:forward page="login.jsp"/>
</c:if>

<%
    String vid=request.getParameter("vid");
    Session s=hib.HibDAOLayer.getHibSession();
    Transaction t=s.beginTransaction();
    Criteria c=s.createCriteria(table.Voter.class);
    c.add(Restrictions.eq("vid", vid));
    List<Voter>data=c.list();
//Candidate temp=(Candidate) s.get(table.Candidate.class, cid);
%>

<%
    for(Voter ob:data)
    {
%>
<center>
    <font color="white" size="5.8">
    FILL UPDATE DETAILS HERE
    <form action="voterupdated.jsp" method="POST">
        <pre>
            VOTER ID    :   <input type="text" name="vid" value="<%=ob.getVid()%>" readonly>
            
            UPDATE NAME :   <input type="text" name="vname" value="<%=ob.getVname()%>">
            
            UPDATE AGE  :    <select name="age">
                                  <option value="<%=ob.getAge()%>"><%=ob.getAge()%></option>
                                <c:forEach var="i" begin="20" end="100">
                                  <option value="${i}">${i}</option>   
                                </c:forEach>
                
                                </select>
            
            UPDATE GENDER:   <select name="sex">
                                <option value="<%=ob.getSex()%>"><%=ob.getSex()%></option>
                                <option value="M">Male</option>
                                <option value="F">Female</option>
                                </select>
            
            UPDATE CITY :   <input type="text" name="city" value="<%=ob.getCity()%>">
                
                
                                <input type="submit" class="button" value="UPDATE">   <input type="reset" class="button" value="RESET">
        </pre>
    </form>
            <% } %>
    <font color="green">${requestScope.msg}</font>
   
    </font>
</center>
