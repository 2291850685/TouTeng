<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<%
 	String name=request.getParameter("name");
	request.setAttribute("name", name) ;
%>

<head>
<meta charset="utf-8">
<title>选择试卷作答</title>
</head>
<body>
<table border="0" cellpadding="10" cellspacing="100" align="center">
			<tr>
				<td align="center">
					<a href="No1.jsp?exams=1&name=<%=name%>">第一份试卷</a>
				</td>
			</tr>
			<tr>
				<td align="center">
					<a href="No2.jsp?exams=2&name=<%=name%>">第二份试卷</a>
				</td>
			</tr>
			<tr>
				<td align="center">
					<a href="No3.jsp?exams=3&name=<%=name%>">第三份试卷</a>
				</td>
			</tr>
		</table>

</body>
</html>