<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Reporte de turnos</title>
</head>
<body>
<style>
<style>
body {
	font-family: Arial;
}

table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
	padding: 0.1em 1em;
}
</style>
	<div>
		<h1 align="center">Reporte de turnos</h1>
	</div>
<s:form action="pdf" method="post" theme="simple">
			<b>Paciente: </b><s:textfield disabled="true" name="paciente" />
			<br><br>
			<b>Numero afiliado: </b><s:textfield disabled="true" name="nroAfiliado" />
			<br><br>
			<b>Documento: </b><s:textfield disabled="true"  name="documento"/> 
			<br><br>
			<div>
			
			 <s:iterator value="listaPrestadores">
			<b>Prestador: </b><s:textfield disabled="true"  name="prestador"/> 
			 <table> 
    <tr>
    	<th>Nro turno</th>
        <th>Plan medico</th>
        <th>Fecha y hora de llegada</th>
        <th>Fecha y hora de inicio de atencion</th>
        <th>Nombre practica</th>
        <th>Importe turno</th>
        <th>Observaciones</th>
		</tr>
		
    <s:iterator value="turnosporprestador">
    
		        <td>${turnosporprestador.Nro}</td>
		        <td>${turnosporprestador.Plan}</td>
		        <td>${turnosporprestador.Llegada}</td>
		        <td>${turnosporprestador.Atencion}</td>
		        <td>${turnosporprestador.Practica}</td> 
		        <td>${turnosporprestador.Importe}</td>
		        <td>${turnosporprestador.Obs}</td> 
		    </tr>
		</s:iterator>
		</s:iterator>
</table>
			</div>
			
						<s:submit value="Enviar" />
		</s:form>
</body>
</html>