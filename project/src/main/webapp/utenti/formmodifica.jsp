<%@ page language="java"
	contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@	page import="com.generation.project.entities.*" %>    
<%	Utente u = (Utente) request.getAttribute("utente"); %>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>MODIFICA UTENTE <%= u.getNome() %></title>
		<link rel="stylesheet" type="text/css" href="../stilefra.css">
    <style>
      .login-box {
  position: absolute;
  top: 90%;
  left: 45%;
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
              0 0 25px #f45f03,
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
  height: 2px;
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
  width: 2px;
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
  height: 2px;
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
  width: 2px;
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
	<div class="form">
		<div class="title">Dettaglio utente con id  <%= u.getId() %></div>
      <hr>
		<form action="modificautente" method="get">
    <div class="form__group field">
      <input class="form__field" type="text" name="id" value="<%= u.getId() %>" readonly><br>
      <label for="id" class="form__label">ID</label>
    </div>
		<div class="form__group field">
			<input class="form__field" type="text" name="nome" value="<%= u.getNome() %>"><br>
      <label for="name" class="form__label">Nome</label>
    </div>
    <div class="form__group field">
			<input class="form__field" type="text" name="cognome" value="<%= u.getCognome() %>"><br>
      <label for="cognome" class="form__label">Cognome</label>
    </div>
    <div class="form__group field">
			<input class="form__field" type="text" name="dob" value="<%= u.getDob() %>"><br>
      <label for="dob" class="form__label">Data di nascita</label>
    </div>
    <div class="form__group field">
			<input class="form__field" type="text" name="nazionalita" value="<%= u.getNazionalita() %>"><br>
      <label for="nazionalita" class="form__label">Nazionalita'</label>
    </div>
    <div class="form__group field">
			<input class="form__field" type="text" name="importoin" value="<%= u.getImportoIn() %>"><br>
      <label for="name" class="form__label">ImportoIniziale</label>
    </div>
    <div class="form__group field">
			<input class="form__field" type="text" name="stipendio" value="<%= u.isStipendio() %>"><br>
      <label for="name" class="form__label">Stipendio</label>
    </div>
    <div class="login-box">
      <a href="#">
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <input class="salva" type="submit" value="AGGIORNA">
      </a>
    </div>
  </form>
	</div>
		
	</body>
</html>