<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" 
  contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" 
  content="text/html; charset=UTF-8" />
<title>Welcome</title>
</head>
<body>
<%
String username = request.getRemoteUser();
%>
<span>Ol&aacute; <strong><%= username %></strong>. Recurso privado!</span>
<br />
<a href="/">Sair</a>
</body>
</html>
