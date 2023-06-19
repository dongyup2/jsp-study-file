<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
    MultipartRequest multi = new MultipartRequest(
        request,
        application.getRealPath("/files"),
        100 * 1024 * 1024,
        "utf-8",
        new DefaultFileRenamePolicy()
    );
	
    File file = multi.getFile("cover_img");

    String title = multi.getParameter("title");
    String author = multi.getParameter("author");
    String publisher = multi.getParameter("publisher");
    String cover_img = file.getName();
    System.out.println("cover_img : " + cover_img);
%>

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
				<td><%=title %></td>
				<td><%=author %></td>
				<td><%=publisher %></td>
                <td><img src="/files/<%=cover_img %>" alt="<%=cover_img %>" width="100" height="100"></td>
			</tr>
		</tbody>
	</table>
</body>
</html>
