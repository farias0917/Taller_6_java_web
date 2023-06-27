<%@include file="nav.jsp"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.Date" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<head>
    <title>Registrarse</title>
</head>
<main class="logo-form">
    <div class="message">
        <img src="img/juego.png" alt="logo" width="200px">
        <h1><span class="s1">My</span> <span class="s2">APP</span></h1>
    </div>
    <div class="container">
        <div class="image">
            <div class="form-box">
                <form action="registerForm" method="post" class="form">
                    <h2>Registrate</h2>
                    <div class="input-box">
                        <input type="text" id="user_firstname" name="user_firstname" autofocus required pattern="[A-Za-z ]{2,40}">
                        <label for="user_firstname">Nombre:</label>
                    </div>

                    <div class="input-box">
                        <input type="text"  id="user_lastname" name="user_lastname" required pattern="[A-Za-z ]{2,40}">
                        <label for="user_lastname">Apellido</label>
                    </div>

                    <div class="input-box">
                        <input type="email"  id="user_email" name="user_email" required pattern="{60}">
                        <label for="user_email">Correo:</label>
                    </div>

                    <div class="input-box">
                        <input type="password"  id="user_password" name="user_password" required pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,16}$">
                        <label for="user_password">Contraseña:</label>
                    </div>
                    <div class="group">
                        <a href="#"><input type="checkbox" name="" id="" required>Terminos y condiciones</a>
                        <a href="registerForm.jsp">Iniciar sesión</a>
                    </div>
                    <button type="submit">Registrarse</button>
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
