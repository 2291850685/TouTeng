<%@page import="one.People"%>
<%@page import="one.Mysql"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>JSP</title>
</head>
<body>
	<form action="FenShu" method="post">
		<%
			Mysql mysql = new Mysql();
			People[] peoples = null;
			peoples = mysql.selectDaAn();
			String s = null;
			int a;
			String b = null;
			String[] aa = new String[peoples.length];
			String[] bb = new String[peoples.length];
		%>
		<!-- <textarea rows="20" cols="80"> -->
		<%
			for (int i = 0; i < peoples.length; i++) {
				a = peoples[i].getExams();
				b = peoples[i].getName();
				s = peoples[i].getAnswers();
		%>
		试卷<%=a%>
		名字：<%=b%>
		<br /> 答案：<%=s%>
		<br /> 分数<input type="text" name="score"><br />
		<%
			aa[i] = b;
				bb[i] = s;
			}
		%>
		<br />
		<br /> <input type="submit" value="提交" />
	</form>

</body>
</html>