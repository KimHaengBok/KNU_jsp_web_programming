<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 로그인</title>
</head>
<body>
 	HOME > 관리자 로그인
	<hr>
 	
 	<%
 		String u_id = request.getParameter("uID");
 		String u_pw = request.getParameter("uPW");
 		
 		if(u_id.equals("space") && u_pw.equals("123456"))
 		{
 			session.setAttribute("memverId", u_id);
 			session.setAttribute("memverPw", u_pw);
 			
 			out.println("새로운 세션 생성 성공 !<br>");
 			out.println("관리자 [ " + u_id + " ]님이 입장하셨습니다. <p>");
 		}
 		else
 		{
 			response.sendRedirect("loginErr.jsp");
 		}
 	%>

	<table>
		<tr>
			<td>
	 			<form action="membersList.jsp" method="post">
	 				<input type="submit" value="등록 회원 관리하기">
	 			</form>
	 		</td>
	 		<td>
	 			<form action="logout.jsp" method="post">
	 				<input type="submit" value="로그아웃">
	 			</form>
	 		</td>
	 	</tr>
	 </table>
</body>
</html>