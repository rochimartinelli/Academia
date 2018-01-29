<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Turnos</title>
<style>
body {
	font-family: Arial;
}

table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
	padding: 0.1em 1em;
}
/* Style the tab */
.tab {
	overflow: hidden;
	border: 1px solid #ccc;
	background-color: #f1f1f1;
}

/* Style the buttons inside the tab */
.tab button {
	background-color: inherit;
	float: left;
	border: none;
	outline: none;
	cursor: pointer;
	padding: 14px 16px;
	transition: 0.3s;
	font-size: 17px;
}

/* Change background color of buttons on hover */
.tab button:hover {
	background-color: #ddd;
}

/* Create an active/current tablink class */
.tab button.active {
	background-color: #ccc;
}

/* Style the tab content   */
.tabcontent {
	display: none;
	padding: 6px 12px;
	border: 1px solid #ccc;
	border-top: none;
}
</style>
</head>
<body>
	<script>
		function openCity(evt, cityName) {
			var i, tabcontent, tablinks;
			tabcontent = document.getElementsByClassName("tabcontent");
			for (i = 0; i < tabcontent.length; i++) {
				tabcontent[i].style.display = "none";
			}
			tablinks = document.getElementsByClassName("tablinks");
			for (i = 0; i < tablinks.length; i++) {
				tablinks[i].className = tablinks[i].className.replace(
						" active", "");
			}
			document.getElementById(cityName).style.display = "block";
			evt.currentTarget.className += " active";
		}
	</script>
	<div class="tab">
		<button class="tablinks" onclick="openCity(event, 'Pacientes')">Pacientes</button>
		<button class="tablinks" onclick="openCity(event, 'Turnos')">Turnos</button>
	</div>
	<div id="Pacientes" class="tabcontent">
		<br>
		<s:form action="pacientes" method="post">
		<h1> Tabla Pacientes</h1>

		<s:form action="BusquedaAfiliado" method="post" theme="simple">
			<s:textfield name="buscaAfiliado" placeholder="Busqueda"/>
			<s:submit />
		</s:form>
		<br>
<a href="NuevoAfiliado.jsp"><img src="https://png.icons8.com/metro/540/plus.png" width="30" height="30" alt="HTML Dog"></a>
<a href="EliminarAfiliado.jsp"><img src="https://vanessaduquerengel.files.wordpress.com/2014/12/png?w=98&h=66" width="40" height="29" alt="HTML Dog"></a>
<a href="ModificarAfiliado.jsp"><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/4/4c/Edit_font_awesome.svg/512px-Edit_font_awesome.svg.png" width="30" height="30" alt="HTML Dog"></a>
<table> 
	
    <tr>
        <th>Seleccionar</td>
        <th>Nombre y apellido</td>
        <th>Tipo</td>
		<th>Nro documento</td>
		<th>Direccion</td>
		<th>Telefono</td>
		<th>Mail</td>
    </tr>
 
       
      <s:iterator value="listadodeusuarios">
    		<tr>
    			<div>
    			<td><input type="radio" name="seleccionado" id="selccionado" value="seleccionado"></td>  </div>    
		        <td>${listadodeusuarios.Name}</td>
		        <td>${listadodeusuarios.location}</td>
		        <td>${listadodeusuarios.startDate}</td>
		        <td>${listadodeusuarios.endDate}</td>
		        <td>${listadodeusuarios.URL}</td>  
		        <td>${listadodeusuarios.URL}</td>
		    </tr>
		</s:iterator>

		</s:form>
	</div>
	<div id="Turnos" class="tabcontent">
		<br>
		<s:form action="turnos" method="post">
		<h1> Tabla Turnos</h1>
<a href="NuevoTurno.jsp"><img src="https://png.icons8.com/metro/540/plus.png" width="30" height="30" alt="HTML Dog"></a>
<a href="EliminarTurno.jsp"><img src="https://vanessaduquerengel.files.wordpress.com/2014/12/png?w=98&h=66" width="40" height="29" alt="HTML Dog"></a>
<a href="ModificarTurno.jsp"><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/4/4c/Edit_font_awesome.svg/512px-Edit_font_awesome.svg.png" width="30" height="30" alt="HTML Dog"></a>
<a href="pdf.jsp"><img src="http://pngimages.net/sites/default/files/pdf-png-image-54105.png" width="30" height="28" alt="HTML Dog"></a>
	 <table> 
    <tr>
    	<th>Seleccionar</th>
        <th>Nro. turno</th>
        <th>Día y horario</th>
        <th>Practica</th>
        <th>Prestador</th>
        <th>Direccion</th>
		</tr>
		
    <s:iterator value="listadodeusuarios">
    		<tr><div>
    			<td><input type="radio" name="seleccionado" id="selccionado" value="seleccionado"></td></div>      
		        <td>${listadodeusuarios.Name}</td>
		        <td>${listadodeusuarios.location}</td>
		        <td>${listadodeusuarios.startDate}</td>
		        <td>${listadodeusuarios.endDate}</td>
		        <td>${listadodeusuarios.URL}</td> 
		    </tr>
		</s:iterator>
</table>

	</s:form>
	</div>