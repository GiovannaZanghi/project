<%@ page language="java"
    contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@    page import="com.generation.project.entities.*" %>
<%    Utente u = (Utente) request.getAttribute("utente"); %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1">
        <title>DETTAGLI <%= u.getId() %></title>
        <link rel="stylesheet" type="text/css" href="../stileDettagli.css">
        <style>

.login-box {
  position: absolute;
  top: 80%;
  left: 50%;
  width: 0;
  padding: 0;
  transform: translate(-50%, -50%);
  background: rgba(0,0,0,.5);
  box-sizing: border-box;
  box-shadow: 0 15px 25px rgba(0,0,0,.6);
  border-radius: 10px;
  text-align: center;
}

.login-box a {
  position: relative;
  display: inline-block;
  padding: 10px 20px;
  color: #000000;
  font-size: 16px;
  text-decoration: none;
  text-transform: uppercase;
  overflow: hidden;
  transition: .5s;
  margin-top: 40px;
  letter-spacing: 4px
}

.login-box a:hover {
  background: #de7300;
  color: #fff;
  border-radius: 5px;
  box-shadow: 0 0 5px #e70000,
              0 0 25px #f83802,
              0 0 50px #da4b20,
              0 0 100px #d80303;
}

.login-box a span {
  position: absolute;
  display: block;
}

.login-box a span:nth-child(1) {
  top: 0;
  left: -100%;
  width: 100%;
  height: 4px;
  background: linear-gradient(90deg, transparent, #ff5202);
  animation: btn-anim1 2s linear infinite;
}

@keyframes btn-anim1 {
  0% {
    left: -100%;
  }
  50%,100% {
    left: 100%;
  }
}

.login-box a span:nth-child(2) {
  top: -100%;
  right: 0;
  width: 4px;
  height: 100%;
  background: linear-gradient(180deg, transparent, #f46f03);
  animation: btn-anim2 2s linear infinite;
  animation-delay: .25s
}

@keyframes btn-anim2 {
  0% {
    top: -100%;
  }
  50%,100% {
    top: 100%;
  }
}

.login-box a span:nth-child(3) {
  bottom: 0;
  right: -100%;
  width: 100%;
  height: 4px;
  background: linear-gradient(270deg, transparent, #f49403);
  animation: btn-anim3 2s linear infinite;
  animation-delay: .5s
}

@keyframes btn-anim3 {
  0% {
    right: -100%;
  }
  50%,100% {
    right: 100%;
  }
}

.login-box a span:nth-child(4) {
  bottom: -100%;
  left: 0;
  width: 4px;
  height: 100%;
  background: linear-gradient(360deg, transparent, #ff7c24);
  animation: btn-anim4 2s linear infinite;
  animation-delay: .75s
}

@keyframes btn-anim4 {
  0% {
    bottom: -100%;
  }
  50%,100% {
    bottom: 100%;
  }
}  
        </style>
    </head>
    <body>
    <div class="box">
    	<div class="title">Dettaglio Utente <%= u.getId() %></div>
        <hr>
        <br>
        <div class="details">
			<b>NOME:</b> <%= u.getNome() %><br>
            <br>
            <b>COGNOME:</b> <%= u.getCognome() %><br>
            <br>
            <b>DATA DI NASCITA:</b> <%= u.getDob() %><br>
            <br>
            <b>NAZIONALITA':</b> <%= u.getNazionalita() %><br>
            <br>
            <b>IMPORTO INIZIALE:</b> <%= u.getImportoIn() %><br>
            <br>
            <b>STIPENDIO CANALIZZATO:</b> <%= u.isStipendio() %><br>
            <br>
            <div class="login-box">


                <a href="formmodifica?id=<%=u.getId()%>">
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                    MODIFICA
                </a>
            </div>
        </div>
    </div>
        
    </body>
</html>

