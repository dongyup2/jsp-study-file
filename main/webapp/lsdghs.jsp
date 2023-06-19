<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>업로드할 파일을 선택하세요.</h3>
<form action="fileUpload_do.jsp" method="post" enctype="multipart/form-data" id="image1">
	<input type="file" name="upload"><br>
	<input type="submit" name="업로드">
</form>
</body>
</html>