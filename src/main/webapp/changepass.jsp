<%-- 
    Document   : changepass
    Created on : Nov 14, 2024, 11:21:41 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="shared/header.jsp" />

<jsp:include page="shared/nav.jsp" />

<div class="container">
    <h2>Change Password</h2>
    <form action="ChangePassServlet" method="post">
        <div>
            <label>Old Password</label>
            <input type="password" name="oldpassword" value="" required="" class="form-control">
        </div>
        <div>
            <label>New Password</label>
            <input type="password" name="newpassword" value="" required="" class="form-control">
        </div>
        <div>
            <label>Confirm New Password</label>
            <input type="password" name="confirmpassword" value="" required="" class="form-control">
        </div>
        <div class="mt-2 mb-2">
            <button type="submit" class="btn btn-primary">Save</button>
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
