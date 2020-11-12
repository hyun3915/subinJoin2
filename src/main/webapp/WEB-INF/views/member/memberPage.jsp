<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../template/bootStrap.jsp"></c:import>
<title>myPage</title>
</head>
<body>
<c:import url="../template/header.jsp"></c:import>
<div class="container">
<h1>${member.id}</h1>
</div>
</body>
</html>