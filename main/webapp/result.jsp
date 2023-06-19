<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String test = (String)application.getAttribute("test");
	
%>
	application data(표현식) : <%=test %><br>
	application data(EL) : ${test }<br>
	<h3>등록 정보</h3>
	<hr>
	<table border="1px">
		<thead>
			<tr>
				<th>제목</th><th>저자</th><th>출판사</th><th>이미지</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>${book.title }</td>
				<td>${book.author }</td>
				<td>${book.publisher }</td>
                <td><img src="/files/${book.filename }" alt="표시이미지" width="100" height="100"></td>
			</tr>
		</tbody>
	</table>
</body>
</html>