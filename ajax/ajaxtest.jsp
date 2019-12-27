<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

시간 <input type="button" 
id="execute" value="execute" /><br><br>
<span id="time"></span>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script>
    $('#execute').click(function(){
        $.ajax({
            url:'./time.jsp',
            type:'post',
            data:$('form').serialize(),
            // form 태그의 정보를 값의이름=값의내용&값 의 
            // 형식으로 바꿔준다.
            success:function(data){
                $('#time').append(data+"<br>");
            }
        });
    });
</script>
</body>
</html>