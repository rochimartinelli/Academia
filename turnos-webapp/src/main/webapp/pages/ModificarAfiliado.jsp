<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edicion afiliadoo</title>
</head>
<body>
	<div>
		<h1 align="center">Datos afiliado</h1>
	</div>
	<div align="left">
		<s:form action="modificarAfiliado" method="post" theme="simple">
			<b>Nombres: </b><s:textfield name="campoNombre" label="Nombre" placeholder="nombres" requiredLabel="true"/>
			<b>Apellidos: </b><s:textfield name="campoApellido" label="Apellido" placeholder="apellidos" requiredLabel="true"/>
			<br><br>
			<b>Tipo de Documento: </b><s:select label="Tipo de documento" name="tipoDocumentoCampo"
				list="{'Seleccione','DNI','Pasaporte','Libreta de enrolamiento','Cedula de identidad'}"
				requiredLabel="true"/>
			<b>Numero de documento</b><s:textfield label="Numero de documento:" name="documentoCampo"
				placeholder="Numero" requiredLabel="true"/>
			<br>
			<h3><b>Domicilio:</b></h3>
			
			<b>Calle: </b><s:textfield label="Calle" name="calleCampo" placeholder="Calle" requiredLabel="true"/>
			<b>Altura: </b><s:textfield label="Altura" name="calleAlturaCampo"
				placeholder="Altura" requiredLabel="true" />
			<b>Piso: </b><s:textfield label="Piso" name="pisoCampo" placeholder="Piso"
				requiredLabel="true" />
			<b>Departamento</b><s:textfield label="Departamento" name="departamentoCampo"
				placeholder="Dpto" requiredLabel="true" />
				<br><br>
			<b>Telefono: </b><s:textfield label="Telefono" name="telefonoCampo"
				placeholder="Telefono" requiredLabel="true" />
			<br><br>
			<b>Email</b><s:textfield label="Email" name="emailCampo" placeholder="@"
				requiredLabel="true" />
				<br><br>
			<b>Fecha de nacimiento: </b><s:textfield label="Fecha de nacimiento" name="fechaCampo"
				placeholder="01/01/1978" requiredLabel="true"/>
				<br><br>
			<b>Sexo </b><s:select label="Sexo" name="sexoCampo"
				list="{'Seleccione','Masculino','Femenino'}" requiredLabel="true" />
				<br><br>
			<b>Estado Civil: </b><s:select label="Estado civil" name="estadoCivilCampo"
				list="{'Seleccione','Soltero/a','Casado/a','Viudo/a','Concubinato','Divorciado/a'}"
				requiredLabel="true" />
				<br><br>
			<b>Hijos o Familiares a cargo: </b><s:textfield label="Hijos o familiares a cargo" name="hijosCampo"
				placeholder="N°" requiredLabel="true" />
				<br><br>
			<b>Plan Medico: </b><s:textfield label="Plan medico" name="planMedicoCampo"
				placeholder="Tipo de plan" requiredLabel="true" />
				<br><br>
			<b>Numero de afiliado: </b><s:textfield label="Numero de afiliado" name="afiliadoCampo"
				placeholder="N°" requiredLabel="true" disabled="true"/>
				<br><br>
			<s:submit value="Enviar" onclick="alert('Los datos han sido modificados correctamente')"/>
		</s:form>
	</div>
</body>
</html>