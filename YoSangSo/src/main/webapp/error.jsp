<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isErrorPage="true" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${contextPath}/resources/css/main-style.css">
    <script src="https://kit.fontawesome.com/881d1deef7.js" crossorigin="anonymous"></script>
    <style>
    	main{
    		display: flex;
    		flex-direction: column;
    	}
    	#err{
    		margin: auto;
    		height: 750px; 
    	}
    	a{
    		margin: auto;
    		text-decoration: none;
    		color: black;
    		font-size: 25px;
    	}
    </style>
    <title>index</title>
</head>
<body>
    <!-- 헤더, 컨텐츠 -->
    <main>
     <img src="${contextPath}/resources/image/error/error404.jpeg" id="err">
     <a href="${contextPath}">메인 페이지로 이동</a>
   </main>
</body>
</html>