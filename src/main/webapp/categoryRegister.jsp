<%@include file="nav.jsp"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.Date" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<head>
    <title>Regisrar Categoria</title>
</head>
<main class="logo-form">
    <div class="container">
        <div class="image">
            <div class="form-box">
                <form action="categoryForm" method="post" class="form">
                    <h2>Registra categoria</h2>
                    <div class="input-box">
                        <input type="text" id="category_name" name="category_name" autofocus required pattern="[A-Za-z ]{2,40}">
                        <label for="category_name">Nombre categoria:</label>
                    </div>

                    <div class="input-box">
                        <input type="text"  id="des" name="des" required pattern="[A-Za-z ]{2,100}">
                        <label for="des">Descripción:</label>

                    </div>
                    <button type="submit" width="400px">Registrar categoria</button>
                </form>
            </div>
        </div>
    </div>
</main>
<p class="copyR">Todos los derechos reservados APLICACIÓN
    ©<%=displayDate()%></p>
<!-- Latest compiled JavaScript -->

<%!
    public String displayDate(){
        SimpleDateFormat dateFormat = new SimpleDateFormat("YYYY");
        Date date = Calendar.getInstance().getTime();
        return dateFormat.format(date);
    }
%>