<%@page import="java.util.List"%>
<%@page errorPage="error.jsp" %>

<%@page import="table.Voter"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String cid=request.getParameter("vid");
    String cname=request.getParameter("vname");
    String age=request.getParameter("age");
    String sex=request.getParameter("sex");
    String city=request.getParameter("city");
    org.hibernate.Session s=hib.HibDAOLayer.getHibSession();
    org.hibernate.Transaction t=s.beginTransaction();
    Voter ob=(Voter)s.get(Voter.class,cid);
    ob.setVname(cname);
    ob.setAge(Integer.parseInt(age));
    ob.setCity(city);
    ob.setSex(sex);
    s.update(ob);
    t.commit();
%>
<jsp:include page="updatevoterbyid.jsp"/>
<center><h3><font color="green">DETAILS UPDATED SUCCESSFULLY</font></h3></center>


