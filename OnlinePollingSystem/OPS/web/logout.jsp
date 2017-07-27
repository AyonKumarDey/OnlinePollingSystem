
<%--
<jsp:include page="home.jsp"/>
<center><h3><font color="lightgreen">YOU HAVE SUCCESSFULLY LOGGED OUT</font></h3></center>
--%>

<%
        HttpSession se=request.getSession(false);
        if(se!=null && se.getAttribute("vid")!=null){
            se.invalidate();
            RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
            rd.include(request, response);
        }
        else{
            request.setAttribute("msg", "You have Sucessfully Loged Out");
            RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
            rd.include(request, response);
        }
        
    

    %>