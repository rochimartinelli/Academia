<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Login Usuario</title>
</head>
<body>

	<div align="center">
		<h1>Sistema de administración de Hospitales</h1>
		<h2>Bienvenido</h2>
		<br><br>
		<s:form action="login" method="post">
			<s:textfield label="Usuario:" name="usuario" />
			<s:textfield label="Password" name="contrasena" />
			<s:submit type="submit" value="Ingresar" />
		</s:form>
	</div>
</body>
</html>