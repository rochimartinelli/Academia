<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Nuevo turno</title>
</head>
<body>

<s:form action="nuevoTurno" method="post">
	<h1>Seleccione el nuevo turno</h1>
			<s:select label="Seleccione prestador" name="campoPrestador"
				list="{'Seleccione',
					'Hospital Dr. Abel Zubizarreta',
					'Hospital Zubizarreta Ciudad Autónoma de Buenos Aires',
					'Centro de Salud y Acción Comunitaria',
					'Hospital Municipal Marie Curie',
					'Dra. Cecilia Grierson',
					'Hosp. General de Agudos D. Vélez Sarsfield',
					'Hospital General de Agudos Carlos G. Durand',
					'Hospital Donación Francisco Santojanni'}" />
					<br>
			<s:select label="Escoja especialidad" name="campoPractica"
				list="{'Seleccione',
				'Cardiologia',
				'Cirugia',
				'dermatologia',
				'Gastroenterologia',
				'Hematologia',
				'Inmunologia',
				'Nefrologia',
				'Neumonologia',
				'Neurologia',
				'Obstetricia',
				'Ginecologia',
				'Odontologia',
				'Oftalmologia',
				'Pediatria',
				'Psicologia',
				'Radiologia',
				'Traumatologia'}" />
				<br>
			<s:textfield label="Fecha de turno" name="campoFecha"
				placeholder="01/01/1978" />
				<br>
			<s:textfield label="Hora de turno" name="campoHora"
				placeholder="00:00" />
				<br>
			<s:submit value="Solicitar" onclick="alert('El turno ha sido creado correctamente')"/>
		</s:form>
		
</body>
</html>