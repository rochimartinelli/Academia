<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Modificar turno</title>
</head>
<body>

<s:form action="modificarTurno" method="post">
	<h1>Seleccione nueva fecha y horario</h1>
			<s:select disabled= "true" label="Seleccione prestador" name="campoPrestador"
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
			<s:select disabled= "true" label="Escoja especialidad" name="campoPractica"
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
			<s:submit value="Solicitar" onclick="alert('Su turno ha sido modificado correctamente')"/>
		</s:form>
</body>
</html>