<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<style>
	table{
		width:300px;
		border:1px solid black;
	}
	
	th, td{
		border : 1px solid black;
	}
	
	.paging{
		display:flex;

		
	}
	.paging>li{
		margin : 10px;
		list-style: none;


	}
	.paging a {
		text-decoration: none;
		color:black;

	}
</style>
<meta charset="UTF-8">
<title>board</title>
</head>
<body>

<table>
	<tr>
		<th>번호</th>
		<th>제목</th>
		<th>내용</th>
		<th>작성자</th>
	</tr>
	<c:forEach var="list" items="${list}">
	<tr>
		<td>${list.boardNo }</td>
		<td>${list.title}</td>
		<td>${list.content }</td>
		<td>${list.writer }</td>
	</tr>
	</c:forEach>
	<tr>
		<td colspan="5" align="center">
   			<ul class="paging">
   				<c:if test="${pageVo.prev}">
           			<li><a href="boardTest?pageNum=${pageVo.startPage - 1 }&amount=${pageVo.amount}">이전</a></li>
				</c:if>
    

           		<c:forEach var="num" begin="${pageVo.startPage}" end="${pageVo.endPage}">
            		<li><a href="boardTest?pageNum=${num}&amount=${pageVo.amount}">${num}</a></li>
           		</c:forEach>
           
           		<!-- 3. 다음버튼 활성화 여부 -->
           		<c:if test="${pageVo.next}">
           			<li><a href="boardTest?pageNum=${pageVo.endPage + 1 }&amount=${pageVo.amount}">다음</a></li>
           		</c:if>
       		</ul>
		</td>
	</tr>
</table>

        <sql:setDataSource
        var="conn"
		driver="oracle.jdbc.OracleDriver"
		url="jdbc:oracle:thin:@112.220.137.37:1521:xe"
		user="yosangso"
		password="yosangso"
		/>
		
		<sql:query var="result" dataSource="${conn}">
		SELECT * FROM PRODUCT WHERE PRODUCT_NO =2
		</sql:query>
		
		${result.rows[0].TESTCOL}
		


</body>
</html>