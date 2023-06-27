<%@ include file="nav.jsp" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.Date" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<head>
    <title>Registrar producto</title>
</head>
<main class="logo-form">
    <div class="container">
        <div class="image">
            <div class="form-box">
                <form action="productForm" method="post" class="form">
                    <h2>Registrar producto</h2>
                    <div class="input-box">
                        <input type="text" id="product_name" name="product_name" autofocus required pattern="[A-Za-z ]{2,40}">
                        <label for="product_name">Nombre producto:</label>
                    </div>

                    <div class="input-box">
                        <input type="number"  id="product_value" name="product_value" required pattern="{1,100}">
                        <label for="product_value">precio:</label>
                    </div>

                    <div class="input-box">
                        <input type="number"  id="category_id" name="category_id" required>
                        <label for="category_id">Numero de Categoria:</label>
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
