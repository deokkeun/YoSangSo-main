
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>테스트테스트</title>
</head>
<body>
  
           
  
  <form action="listtest" method="get" name="listtest-form" >
  <table border ="1">
    	<tr>
    		<th>상품번호</th>
    		<th>상품명</th>
    		<th>상품가격</th>
    		
    	</tr>
	    	
    	<c:forEach var ="product" items="${allProductList}">
    		<tr>
    			<td>${product.productNo}</td>
    			<td>${product.productName}</td>
    			<td>${product.price}</td>
    		</tr>
    	</c:forEach>
    </table>
	</form>
 
</body>
</html>