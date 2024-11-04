<%-- 
    Document   : login
    Created on : Nov 4, 2024, 11:01:05 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="shared/header.jsp" />
<jsp:include page="shared/nav.jsp" />
<div class="container">
    <form action="LoginServlet" method="post">
        <h2>Login System</h2>
        <div>
            <label>User name</label>
            <input type="text" name="username" required="" class="form-control">
        </div>
        <div>
            <label>Password</label>
            <input type="password" name="password" required="" class="form-control">
        </div>
        <div class="mt-2 mb-2">
            <button type="submit" class="btn btn-primary">Login</button>
        </div>

    </form>
       <%
           if (request.getAttribute("error") != null) {
       %>
       <div class="text-danger mb-3">
           <%=request.getAttribute("error")%>
       </div>
       <%
           }
       %>
</div>
<jsp:include page="shared/footer.jsp" />
