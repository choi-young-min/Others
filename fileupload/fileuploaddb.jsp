<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="fileuploaddbproc.jsp" name="form1">
<input type="file" name="file1"><br>
<input type="button" onclick="filesubmit()" value="업로드">
</form>

<script>
	function filesubmit(){		
		document.form1.file1.select();
		alert(document.selection.createRange().text);
	}
</script>
</body>
</html>