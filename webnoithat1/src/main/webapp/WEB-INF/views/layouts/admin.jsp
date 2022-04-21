<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
 <head>
<decorator:head/>
</head> 
<header>
	<meta charset="utf-8">
	<%@include file="/WEB-INF/views/layouts/admin/header.jsp"%>
	<decorator:body />
</header>
</html>
