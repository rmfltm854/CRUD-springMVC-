<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action = "insertForm.do" method = "get">
	<table border="1" align="center">
		<caption>회원가입</caption>
		<tr>
			<th>작성자</th>
			<td><input type = text name = name></td>
		</tr> 
		<tr>
		    <th>나이</th>
		    <td>
		    	<input type = text name = age>
		    </td>
		</tr>

		<tr>
			<th>전화번호</th>
			<td>
				<input type="text" name="tel1" >-
				<input type="text" name="tel2" >-
				<input type="text" name="tel3" >
			</td>
		</tr>
		
		
		<tr>
			<td colspan="2" align="center">
			   <input type="submit" value= "회원가입" >

		
			</td>
		</tr>

	</table>
</form>

</body>
</html>