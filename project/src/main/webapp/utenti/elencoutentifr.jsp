<%@ page 
	language="java"
	contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@	page import="java.util.List" %>
<%@	page import="com.generation.project.entities.Utente" %>
<%List<Utente> utenti = (List<Utente>) request.getAttribute("elencoutenti"); %>
<%String proviamo = request.getAttribute("proviamo") + ""; %>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Liste d'utilisateur</title>
		<link rel="stylesheet" type="text/css" href="../stileElenco.css">
		<style>
		body{
		margin: 0;
	}
		
		header
{
    position: absolute;
    top: 0;
    left: 0;
	padding-left: 2%;
    padding-right: 2%;
    width: 93%;
    display:flex;
    justify-content: space-between;
    align-items: center;
    z-index: 10000;
}

header .logo
{
   width: 10%;
   padding-left: 0;

}

header ul 
{
    display: flex;
    justify-content: center;
    align-items: center;
}

header ul li 
{
    list-style: none;
    margin-left: 20px;
}

header ul li a
{
    text-decoration: none;
    padding: 6px 15px;
    color: #fff;
    border-radius: 20px;
}

header ul li a:hover ,
header ul li a.active
{
    background: #fff;
    color: #2b1055;
}
            .dropdown-menu {
  display: none;
}

.dropdown:hover .dropdown-menu {
   
  display: block;
}
		
.button {
  --background: #2B3044;
  --background-hover: #1E2235;
  --text: #fff;
  --shadow: rgba(0, 9, 61, .2);
  --paper: #5C86FF;
  --paper-lines: #fff;
  --trash: #E1E6F9;
  --trash-lines: #BBC1E1;
  --check: #fff;
  --check-background: #5C86FF;
  position: relative;
  border: none;
  outline: none;
  background: none;
  padding: 10px 24px;
  border-radius: 7px;
  min-width: 142px;
  -webkit-appearance: none;
  -webkit-tap-highlight-color: transparent;
  cursor: pointer;
  display: flex;
  color: var(--text);
  background: var(--btn, var(--background));
  box-shadow: 0 var(--shadow-y, 4px) var(--shadow-blur, 8px) var(--shadow);
  transform: scale(var(--scale, 1));
  transition: transform 0.3s, box-shadow 0.3s, background 0.3s;
}
.button span {
  display: block;
  font-size: 14px;
  line-height: 25px;
  font-weight: 600;
  opacity: var(--span-opacity, 1);
  transform: translateX(var(--span-x, 0)) translateZ(0);
  transition: transform 0.4s ease var(--span-delay, 0.2s), opacity 0.3s ease var(--span-delay, 0.2s);
}
.button .trash {
  display: block;
  position: relative;
  left: -8px;
  transform: translate(var(--trash-x, 0), var(--trash-y, 1px)) translateZ(0) scale(var(--trash-scale, 0.64));
  transition: transform 0.5s;
}
.button .trash:before, .button .trash:after {
  content: "";
  position: absolute;
  height: 8px;
  width: 2px;
  border-radius: 1px;
  background: var(--icon, var(--trash));
  bottom: 100%;
  transform-origin: 50% 6px;
  transform: translate(var(--x, 3px), 2px) scaleY(var(--sy, 0.7)) rotate(var(--r, 0deg));
  transition: transform 0.4s, background 0.3s;
}
.button .trash:before {
  left: 1px;
}
.button .trash:after {
  right: 1px;
  --x: -3px;
}
.button .trash .top {
  position: absolute;
  overflow: hidden;
  left: -4px;
  right: -4px;
  bottom: 100%;
  height: 40px;
  z-index: 1;
  transform: translateY(2px);
}
.button .trash .top:before, .button .trash .top:after {
  content: "";
  position: absolute;
  border-radius: 1px;
  background: var(--icon, var(--trash));
  width: var(--w, 12px);
  height: var(--h, 2px);
  left: var(--l, 8px);
  bottom: var(--b, 5px);
  transition: background 0.3s, transform 0.4s;
}
.button .trash .top:after {
  --w: 28px;
  --h: 2px;
  --l: 0;
  --b: 0;
  transform: scaleX(var(--trash-line-scale, 1));
}
.button .trash .top .paper {
  width: 14px;
  height: 18px;
  background: var(--paper);
  left: 7px;
  bottom: 0;
  border-radius: 1px;
  position: absolute;
  transform: translateY(-16px);
  opacity: 0;
}
.button .trash .top .paper:before, .button .trash .top .paper:after {
  content: "";
  width: var(--w, 10px);
  height: 2px;
  border-radius: 1px;
  position: absolute;
  left: 2px;
  top: var(--t, 2px);
  background: var(--paper-lines);
  transform: scaleY(0.7);
  box-shadow: 0 9px 0 var(--paper-lines);
}
.button .trash .top .paper:after {
  --t: 5px;
  --w: 7px;
}
.button .trash .box {
  width: 20px;
  height: 25px;
  border: 2px solid var(--icon, var(--trash));
  border-radius: 1px 1px 4px 4px;
  position: relative;
  overflow: hidden;
  z-index: 2;
  transition: border-color 0.3s;
}
.button .trash .box:before, .button .trash .box:after {
  content: "";
  position: absolute;
  width: 4px;
  height: var(--h, 20px);
  top: 0;
  left: var(--l, 50%);
  background: var(--b, var(--trash-lines));
}
.button .trash .box:before {
  border-radius: 2px;
  margin-left: -2px;
  transform: translateX(-3px) scale(0.6);
  box-shadow: 10px 0 0 var(--trash-lines);
  opacity: var(--trash-lines-opacity, 1);
  transition: transform 0.4s, opacity 0.4s;
}
.button .trash .box:after {
  --h: 16px;
  --b: var(--paper);
  --l: 1px;
  transform: translate(-0.5px, -16px) scaleX(0.5);
  box-shadow: 7px 0 0 var(--paper), 14px 0 0 var(--paper), 21px 0 0 var(--paper);
}
.button .trash .check {
  padding: 4px 3px;
  border-radius: 50%;
  background: var(--check-background);
  position: absolute;
  left: 2px;
  top: 24px;
  opacity: var(--check-opacity, 0);
  transform: translateY(var(--check-y, 0)) scale(var(--check-scale, 0.2));
  transition: transform var(--check-duration, 0.2s) ease var(--check-delay, 0s), opacity var(--check-duration-opacity, 0.2s) ease var(--check-delay, 0s);
}
.button .trash .check svg {
  width: 8px;
  height: 6px;
  display: block;
  fill: none;
  stroke-width: 1.5;
  stroke-dasharray: 9px;
  stroke-dashoffset: var(--check-offset, 9px);
  stroke-linecap: round;
  stroke-linejoin: round;
  stroke: var(--check);
  transition: stroke-dashoffset 0.4s ease var(--checkmark-delay, 0.4s);
}
.button.delete {
  --span-opacity: 0;
  --span-x: 16px;
  --span-delay: 0s;
  --trash-x: 46px;
  --trash-y: 2px;
  --trash-scale: 1;
  --trash-lines-opacity: 0;
  --trash-line-scale: 0;
  --icon: #fff;
  --check-offset: 0;
  --check-opacity: 1;
  --check-scale: 1;
  --check-y: 16px;
  --check-delay: 1.7s;
  --checkmark-delay: 2.1s;
  --check-duration: .55s;
  --check-duration-opacity: .3s;
}
.button.delete .trash:before, .button.delete .trash:after {
  --sy: 1;
  --x: 0;
}
.button.delete .trash:before {
  --r: 40deg;
}
.button.delete .trash:after {
  --r: -40deg;
}
.button.delete .trash .top .paper {
  -webkit-animation: paper 1.5s linear forwards 0.5s;
          animation: paper 1.5s linear forwards 0.5s;
}
.button.delete .trash .box:after {
  -webkit-animation: cut 1.5s linear forwards 0.5s;
          animation: cut 1.5s linear forwards 0.5s;
}
.button.delete, .button:hover {
  --btn: var(--background-hover);
  --shadow-y: 5px;
  --shadow-blur: 9px;
}
.button:active {
  --shadow-y: 2px;
  --shadow-blur: 5px;
  --scale: .94;
}

@-webkit-keyframes paper {
  10%, 100% {
    opacity: 1;
  }
  20% {
    transform: translateY(-16px);
  }
  40% {
    transform: translateY(0);
  }
  70%, 100% {
    transform: translateY(24px);
  }
}

@keyframes paper {
  10%, 100% {
    opacity: 1;
  }
  20% {
    transform: translateY(-16px);
  }
  40% {
    transform: translateY(0);
  }
  70%, 100% {
    transform: translateY(24px);
  }
}
@-webkit-keyframes cut {
  0%, 40% {
    transform: translate(-0.5px, -16px) scaleX(0.5);
  }
  100% {
    transform: translate(-0.5px, 24px) scaleX(0.5);
  }
}
@keyframes cut {
  0%, 40% {
    transform: translate(-0.5px, -16px) scaleX(0.5);
  }
  100% {
    transform: translate(-0.5px, 24px) scaleX(0.5);
  }
}
html {
  box-sizing: border-box;
  -webkit-font-smoothing: antialiased;
}

* {
  box-sizing: inherit;
}
*:before, *:after {
  box-sizing: inherit;
}

body {
  min-height: 100vh;
  display: flex;
  font-family: "Inter", Arial;
  justify-content: center;
  align-items: center;
}
body .dribbble {
  position: fixed;
  display: block;
  right: 20px;
  bottom: 20px;
}
body .dribbble img {
  display: block;
  height: 28px;
}
.btn-toolset {
 display: inline-block;
 text-align: center;
 white-space: nowrap;
 color: #FFFFFF;
 text-decoration: none;
 line-height: 1.2;
 font-weight: normal;
 font-family: sans-serif;
 font-size: 18px;
 background-color: #000000;
 border-radius: 10px;
 padding: 11px 22px;
 border: 1px solid #006FE6;
 cursor: pointer;
}
.btn-toolset:hover {
 background-color: #171314;
 border-color: #0056B3;
}
.btn-toolset > strong {
 font-size: 24px;
}

		</style>
	</head>
	<body>
	
	<header>
          <a href="/Generation.html" class="logo" target="_blank">
          <img src="Logo2.png">
           </a>
               <ul>
                    <li><a href="/" class="active">Home</a></li>
                    <li><a href="/utenti/elencoutenti">Liste</a></li>
                    <li><a href="/utenti/formnuovoutente">New</a></li>
                    <li class="dropdown">
                 	   <a href="#" class="dropdown-toggle" data-toggle="dropdown">Langue<span class="caret"></span></a>
                    	<ul class="dropdown-menu" style="bottom: 60%;">
                    		<li><a href="/utenti/elencoutenti">Italiano</a></li>
                    		<li><a href="/utenti/elencoutentien">Inglese</a></li>
                    		<li><a href="/utenti/elencoutentifr">Francese</a></li>
            		    </ul>
                    </li>
              </ul>
  </header>
	<hr>
	
	<h1>Liste d'utilisateur</h1>
	
	<table>
		<tr>
			
			<td class="intestazione">
				NOM
			</td>
			<td class="intestazione">
				PRENOM
			</td>
			<td class="intestazione">
				DATE DE NAISSANCE
			</td>
			<td class="intestazione">
				NAZIONALITE'
			</td>
			<td class="intestazione">
				MONTANT INITIAL
			</td>
			<td class="intestazione">
				SALAIRE CANALISE'
			</td>
			<td class="intestazione"> 
			
			</td>
			<td class="intestazione"> 
			
			</td>
		</tr>
		<!--	In JSP ci sono diversi simboli sintattici:
				CONFIGURAZIONE	-> < % @ quando vengono gestite le impostazioni della pagina: IMPORT etc.
				CODICE JAVA 	-> < %	 quando scriviamo codice come fossimo in una classe JAVA
				STAMPA			-> < % = quando vogliamo stampare i dati da JAVA (System.out.println())	
		 		 
		 -->
		<% for(Utente u : utenti) {%>
		<tr> <!-- u.getDataDiNascita(), u.getImportIn() -->
			 
			<td><%= u.getNome() %></td>
			<td><%= u.getCognome() %></td>
			<td><%= u.getDob() %></td>
			<td><%= u.getNazionalita() %></td>
			<td><%= u.getImportoIn() %></td>
			<td><%= u.isStipendio() %></td>
			
			<td>
			<button  class="button" onclick="location.href='dettagliutente?id=<%= u.getId() %>'">
			<div>	
					<span style="text-align:center;">Details</span>
			</div>
			</button>
			
            </td>
            <td>
				
				<button class="button" onclick="setTimeout(() => window.location.href='eliminautente?id=<%= u.getId() %>', 2000)">
					<div class="trash">
						<div class="top">
							<div class="paper"></div>
						</div>
						<div class="box"></div>
						<div class="check">
							<svg viewBox="0 0 8 6">
								<polyline points="1 3.4 2.71428571 5 7 1"></polyline>
							</svg>
						</div>
					</div>
					<span>Delete</span>
				</button>	
			</td>
		</tr>
		<%} %>
	</table>
	<h1 style="text-align:center;">Joue aver nous!</h1>

<iframe src="https://funhtml5games.com/?embed=pacman" style="width:342px;height:490px;border:none;" frameborder="0" scrolling="no" title="It's is your time to have some fun you bellhead!">
</iframe>
	</body>
	<script>
		document.querySelectorAll('.button').forEach(button => button.addEventListener('click', e => {
		if(!button.classList.contains('delete')) {
			button.classList.add('delete');
			setTimeout(() => button.classList.remove('delete'), 3200);
		}
		e.preventDefault();
	}));
	</script>
</html>