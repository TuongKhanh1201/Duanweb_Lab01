<%-- 
    Document   : Left
    Created on : Sep 28, 2023, 12:08:09 PM
    Author     : KHOACNTT
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="dao.LoaiDAO"%>
<%@page import="model.Loai"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    LoaiDAO loaiDAO = new LoaiDAO();
    ArrayList<Loai> dsLoai = loaiDAO.getAll();
%>
<div class="card mb-3">
    <h3 class="card-header">Category</h3>  
        <ul class="list-group list-group-flush">
            <%
                for(Loai loai : dsLoai)
                {
                
            
            %>
            <li class="list-group-item"><a class="text-decoration-none"href="product.jsp?maloai=<%=loai.getMaloai() %>">
              <%=loai.getTenloai() %></a></li>
            
            
            <%
                }
            %>
            
        </ul>   
</div>
