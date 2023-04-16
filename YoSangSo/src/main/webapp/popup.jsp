<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>팝업</title>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	</head>
	     <style>
	        .container{
	            font-family: 'Pretendard-Regular';
	            margin: auto;
	            text-align: center;
	            margin-top: 80px;
	            margin-top: 0;
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
	        
	        .reasons{
	        
	        	display: flex;
	        	justify-content: center;
	        	align-items: center;
	       	}
	       	
	       	tr{
	       		display : flex;
	       	}
	       	
	       	.refundText{
	       		font-size: 20px;
	       		font-weight: 600;
	       	}
	    </style>
	<body>
	  	<div class="container">
	  		<div class="reasons">
		  		<table>
		  			<tr>
			  			<td><p class="refundText">환불 이유을 선택해주세요</p></td>
		  			</tr>
		  			<tr>
		  				<td>
				  			<label>
				  			<input type="checkbox" name="refundReason" class="refundReason">단순 변심
				  			</label>
		  				</td>
		  			</tr>
		  			<tr>
		  				<td>
				  			<label>
				  			<input type="checkbox" name="refundReason" class="refundReason">가격이 맘에 들지 않습니다.
				  			</label>
		  				</td>
		  			</tr>
		  			<tr>
		  				<td>
				  			<label>
				  			<input type="checkbox" name="refundReason" class="refundReason">상품이 생각한 것과 다릅니다.
				  			</label>
		  				</td>
		  			</tr>
		  			<tr>
		  				<td>
				  			<label>
				  			<input type="checkbox" name="refundReason" class="refundReason">훼손된 상품입니다.
				  			</label>
		  				</td>
		  			</tr>
		  		</table>
	  		</div>
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