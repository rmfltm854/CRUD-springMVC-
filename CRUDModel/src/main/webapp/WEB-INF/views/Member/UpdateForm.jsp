<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" 
	  src="${ pageContext.request.contextPath }/resources/httpRequest.js"></script>

<script type="text/javascript">
function send(f)
{
	var name = f.name.value;
	var age = f.age.value;
	var tel1 = f.tel1.value;
	var tel2 = f.tel2.value;
	var tel3 = f.tel3.value;
	
	if(name==''){
		alert('작성자 이름을 입력하세요');
		f.name.focus();
		return ;
	}
	
	if(age==''){
		alert('나이를 입력하세요');
		f.age.focus();
		return;
	}
	
	if(tel1==''){
		alert('전화번호를 입력하세요');
		f.tel1.focus();
		return;
	}if(tel2==''){
		alert('전화번호를 입력하세요');
		f.tel2.focus();
		return;
	}if(tel3==''){
		alert('전화번호를 입력하세요');
		f.tel3.focus();
		return;
	}
	
	var url = "updateForm.do";
	
	//파라미터에 한글이나 특수문자가 들어가 있는 경우를 대비하여 인코딩하여 보낸다.
	var param = "num="+ f.num.value + "&name=" +name + "&age=" +age+ "&tel1="+tel1 +"&tel2=" +tel2 + "&tel3=" +tel3;

	sendRequest( url, param, resultFn, "GET" );
}
function resultFn(){
	//console.log(xhr.readyState+" / "+ xhr.status);
	if(xhr.readyState==4 && xhr.status==200)
	{
		//도착된 데이터를 읽어오기
		var data = xhr.responseText;
		
		if(data == 'no'){
			alert( "수정실패");
			return;
		}
		
		alert( "수정성공" );

		location.href="list";
	}
}//resultFn()

</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form>
    <input type="hidden" name="num" value="${ vo.num }">
	<table border="1" align="center">
		<caption>회원정보수정</caption>
		<tr>
			<th>작성자</th>
			<td><input name="name" value="${ vo.name }"></td>
		</tr> 
		<tr>
		    <th>나이</th>
		    <td>
		    	<textarea name="age"  rows="5"  cols="50">
								${ vo.age }</textarea>
		    </td>
		</tr>

		<tr>
			<th>전화번호</th>
			<td>
				<input type="text" name="tel1" value="${ vo.tel1 }">
				<input type="text" name="tel2" value="${ vo.tel2 }">
				<input type="text" name="tel3" value="${ vo.tel3 }">
			</td>
		</tr>
		
		
		<tr>
			<td colspan="2" align="center">
			   <input type="button" value="수정하기"
			          onclick="send(this.form)" >

			   <input type="button" value="목록보기"
			          onclick="location.href='list'">
			</td>
		</tr>

	</table>
</form>


</body>
</html>