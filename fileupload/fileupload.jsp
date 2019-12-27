<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	파일업로드 테스트
	
	<form method="post" action="fileuploadproc.jsp" enctype="multipart/form-data">
		이름<input type="text" name="uname"><br>
		제목<input type="text" name="title"><br>
		내용<textarea name="content"></textarea><br>
		파일<input type="file" name="upload"><br>
		<input type="submit" value="등록">
	</form>
</body>
</html>












