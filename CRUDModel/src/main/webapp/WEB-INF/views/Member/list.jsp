<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1" align="center">
	
		<tr>
			<th>번호</th>
			<th>이름</th>
			<th>나이</th>
			<th>전화번호</th>
			<th>전화번호</th>
			<th>전화번호</th>
			<th align="center">
				<button onclick="location.href='/crud/insert'">입력</button>
			</th>
		</tr>
		
 		<c:forEach var="vo" items="${ list }">
			<tr>
			
				<td>${ vo.num}</td>
				<td>${ vo.name }</td>
				<td>${ vo.age }</td>
				<td>${ vo.tel1 }</td>
				<td>${ vo.tel2 }</td>
				<td>${ vo.tel3 }</td>
				<td>
					<button onclick="location.href='/crud/update?num=${vo.num}'">수정</button>
					<button onclick="location.href='/crud/delete?num=${vo.num}'">삭제</button>
					
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>