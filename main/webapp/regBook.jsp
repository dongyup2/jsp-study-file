<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>
	<tr>
		<form name="frm" action="BookRegServlet" method="post" enctype="multipo">
		<label>제목 <input type="text" ></label><br>
		<label>저자 <input type="text" ></label><br>
		<label>출판사 <input type="text" ></label><br>
		<label>이미지 <input type="file" ></label><br>
		<input type="submit" >
		</form>
	</tr>
</table>
</body>
</html>