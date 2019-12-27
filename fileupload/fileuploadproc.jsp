<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
//폼에 enctype이 추가되면 request.getParameter()메소드는 정상 동작되지 않음-> null

try{
 //전송된 파일이 저장되는 실제 물리적인 경로
 String saveDir=application.getRealPath("/upload");//미리 만들어두기.
 int maxPostSize=1024*1024*10;//업로드파일 최대용량 10M
 
 // 파일 저장
 MultipartRequest mr
              =new MultipartRequest(request,
                                     saveDir,
                                     maxPostSize,
                                     "utf-8",
                                     new DefaultFileRenamePolicy());
 
 out.print("파일저장 성공!!<br/><br/>");
 
 
//mr객체에서 사용자가 입력 요청한 값 가져오기
 String uname=mr.getParameter("uname");
 String title=mr.getParameter("title");
 String content=mr.getParameter("content");
 out.print(uname+"<br/>");
 out.print(title+"<br/>");
 out.print(content+"<br/>"); 
 // upload폴더에 저장된 파일을 이용해서 파일 정보 가져오기
 // 열거형 객체에 전부 담기
 // <input type=file name=filenm>
 Enumeration files=mr.getFileNames();
 String filenm=(String)files.nextElement(); //가져온 파일명. ex) "sky.png"
 out.print("파일명: "+mr.getFilesystemName(filenm));
 out.print("<br/>");
 out.print("원본파일명:"+ mr.getOriginalFileName(filenm));
 out.print("<br/>");
 
 File obj=mr.getFile(filenm); // 파일 가져오기
 if(obj.exists()) { //파일이 존재하는지?
  out.print("파일크기 : "+obj.length()+"<br/>");
  out.print("파일명 : "+obj.getName()+"<br/>");
  out.print("경로+파일명 : "+obj.getPath()+"<br/>");   
 }
 
 // 파일 다운로드 (.jsp .asp .php .html .txt는 제외)
%>
       파일다운로드:
       <a href="./upload/<%=obj.getName() %>"><%=obj.getName() %></a>
<% 
 
}catch(Exception e){
 out.print(e);
 out.print("<br/>업로드실패");
 out.print("<a href='history.back(-1)'>[다시시도]</a>");
}

%>



File f= new File(saveFolder+fileName);  
//매개변수에 파일 경로와 이미지 이름을 넣는다

if(f.exists()){  //파일이 있는지 확인
  f.delete();  //파일을 삭제하는 부분
}
</body>
</html>










