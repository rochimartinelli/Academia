<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Eliminar afiliado</title>
</head>
<body>
	<div>
		<h1 align="center">¿Desea eliminar el afiliado?</h1>
	</div>
	<div align="left">
		<s:form action="eliminarAfiliado" method="post" theme="simple">
			<b>Nombres: </b><s:textfield name="campoNombre" label="Nombre" placeholder="nombres" requiredLabel="true" disabled="true"/>
			<b>Apellidos: </b><s:textfield name="campoApellido" label="Apellido" placeholder="apellidos" requiredLabel="true" disabled="true"/>
			<br><br>
			<b>Tipo de Documento: </b><s:select label="Tipo de documento" name="tipoDocumentoCampo"
				list="{'Seleccione','DNI','Pasaporte','Libreta de enrolamiento','Cedula de identidad'}"
				requiredLabel="true" disabled="true"/>
			<b>Numero de documento</b><s:textfield label="Numero de documento:" name="documentoCampo"
				placeholder="Numero" requiredLabel="true" disabled="true"/>
			<br><br>
			<b>Plan Medico: </b><s:textfield label="Plan medico" name="planMedicoCampo"
				placeholder="Tipo de plan" requiredLabel="true" disabled="true"/>
				<br><br>
			<b>Numero de afiliado: </b><s:textfield label="Numero de afiliado" name="afiliadoCampo"
				placeholder="N°" requiredLabel="true" disabled="true"/>
				<br><br>
			<s:submit value="Eliminar afiliado" onclick="alert('El afiliado ha sido eliminado')"/>
		</s:form>
	</div>
</body>
</html>