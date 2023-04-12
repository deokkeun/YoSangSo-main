<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>팝업</title>
	</head>
	     <style>
	        .container{
	            font-family: 'Pretendard-Regular';
	            margin: auto;
	            text-align: center;
	            margin-top: 80px;
	        }
	
	        .container button {
	            border: transparent;
	            margin: 20px 20px;
	            border-color: #2678F3;
	            background-color: #2678F3;
	            color: white;
	            cursor: pointer;
	            border-radius: 5px;
	            width: 50px
	        }
	    </style>
	<body>
	  	<div class="container">
            <div>환불을 진행하시겠습니까?</div>
            <span>
                <button type="button" onclick="refundYes()">확인</button>
            </span>
            <span>
                <button type="button" onclick="refundNo()">취소</button>
            </span>
        </div>
        <script src="${contextPath}/resources/js/refund-popup.js"></script>
	</body>
	
</html>