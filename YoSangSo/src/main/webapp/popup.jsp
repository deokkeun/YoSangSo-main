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
	            font-size: 20px;
	        }
	
	        .blue {
	            border: transparent;
	            margin: 20px 20px;
	            border-color: #2678F3;
	            background-color: #2678F3;
	            color: white;
	            cursor: pointer;
	            border-radius: 5px;
	            width: 80px;
	            height: 30px;
	        }
	        
	        .grey{
	        	border: transparent;
	            margin: 20px 20px;
	            border-color: #2678F3;
	            cursor: pointer;
	            border-radius: 5px;
	            width: 80px;
	            height: 30px;
	        	background-color: silver;
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
	       	
	       	input[type=checkbox] {  
		    display: none;  
			}
			
			input[type=checkbox] + label{
			    display: inline-block;  
			    cursor: pointer;  
			    position: relative;  
			    padding-left: 25px;  
			    margin-right: 15px;  
			    font-size: 13px;
			}
			
			input[type=checkbox]+ label:before {     
			
			    content: "";  
			    display: inline-block;  
			  
			    width: 20px;  
			    height: 20px;  
			  
			    margin-right: 10px;  
			    position: absolute;  
			    left: 0;  
			    bottom: 1px;  
			    background-color: #ccc;  
			    border-radius: 2px; 
			    box-shadow: inset 0px 1px 1px 0px rgba(0, 0, 0, .3), 0px 1px 0px 0px rgba(255, 255, 255, .8);  
			}
			input[type=checkbox]:checked + label:before { 
			
			    content: "\2713";  /* 체크모양 */
			    text-shadow: 1px 1px 1px rgba(0, 0, 0, .2);  
			    font-size: 18px; 
			    font-weight:800; 
			    color: #fff;  
			    background:#2f87c1;
			    text-align: center;  
			    line-height: 18px;  
			
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
				  			
				  			<input type="checkbox" name="refundReason" class="refundReason" id="reason1">
				  			<label for="reason1">
				  			단순 변심
				  			</label>
		  				</td>
		  			</tr>
		  			<tr>
		  				<td>
				  			<input type="checkbox" name="refundReason" class="refundReason" id="reason2">
				  			<label for="reason2">
				  			가격이 맘에 들지 않습니다.
				  			</label>
		  				</td>
		  			</tr>
		  			<tr>
		  				<td>
				  			<input type="checkbox" name="refundReason" class="refundReason" id="reason3">
				  			<label for="reason3">
				  			상품이 생각한 것과 다릅니다.
				  			</label>
		  				</td>
		  			</tr>
		  			<tr>
		  				<td>
				  			<input type="checkbox" name="refundReason" class="refundReason" id="reason4">
				  			<label for="reason4">
				  			훼손된 상품입니다.
				  			</label>
		  				</td>
		  			</tr>
		  		</table>
	  		</div>
            <span>
                <button type="button" class="blue" onclick="refundYes()">확인</button>
            </span>
            <span>
                <button type="button" class="grey" onclick="refundNo()">취소</button>
            </span>
        </div>
        <script src="${contextPath}/resources/js/refund-popup.js"></script>
	</body>
	
</html>