<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<%
	String name = request.getParameter("name");
	String exams = request.getParameter("exams");
%>

<br />
<head>
<meta charset="utf-8">
<title>第二份试卷</title>
</head>
<body>
<form action="BaoCun?exams=<%=exams%>&name=<%=name%>" method="post">
		<table border="0" cellspacing="" cellpadding="" width="40%" height="40">
			1.运算符 +、<=、=、%中，优先级最低的运算符是______。
			<tr align="left">
				<td><input type="radio" name="opt1" value="A">A. + </td>
				<td><input type="radio" name="opt1" value="B">B.<=</td>
				<td><input type="radio" name="opt1" value="C">C.=</td>
				<td><input type="radio" name="opt1" value="D">D.%</td>
			</tr>
			<br />
		</table>
		2.字符串“”EOF= -\61\””的长度是__
		<table border="0" cellspacing="" cellpadding="" width="40%"
			height="40">
			<tr align="left">
				<td><input type="radio" name="opt2" value="A">A. 8</td>
				<td><input type="radio" name="opt2" value="B">B. 9</td>
				<td><input type="radio" name="opt2" value="C">C.12</td>
				<td><input type="radio" name="opt2" value="D">  D. 非法字符串</td>
			</tr>
			<br />
		</table>
		<table border="0" cellspacing="" cellpadding="" width="90%"
			height="40">
			3.下列_____是C语言的有效标识符？
			<tr align="left">
				<td><input type="radio" name="opt3" value="A">A._No1</td>
				<td><input type="radio" name="opt3" value="B">B.No.1</td>
				<td><input type="radio" name="opt3" value="C">C.12345</td>
				<td><input type="radio" name="opt3" value="D">D.int</td>
			</tr>
		</table>
		<table border="0" cellspacing="" cellpadding="" width="40%"
			height="40">
			4.int?k=10;
              ?while(k=0)?k=k-1;?
                         则下面描述正确的是___
			<tr align="left">
				<td><input type="radio" name="opt4" value="A">A.?while循环执行10次 </td>
				<td><input type="radio" name="opt4" value="B">B.循环是无限循环</td>
				<td><input type="radio" name="opt4" value="C">C.循环体语句一次也不执行   </td>
				<td><input type="radio" name="opt4" value="D">D.循环体语句执行一次</td>
			</tr>
		</table>
		二、填空题 <br />
		<table border="0" cellspacing="" cellpadding="" width="40%">
			1.若x、y、z均为int型变量，则描述“x或y中有一个小于z”的表达式是______。

			<tr align="left">
				<td><input type="text" name="file1"></td>
			</tr>
		</table>
		<table border="0" cellspacing="" cellpadding="" width="40%">
			2.设a、b均为int型变量且a=2，b=4，则表达式!(x=a)?|| (y=b)?&& 0的值是_____。
		
			<tr align="left">
				<td><input type="text" name="file2"></td>
			</tr>
		</table>
		<table border="0" cellspacing="" cellpadding="" width="40%">
			3.在函数中使用_______在函数中使用。
			<tr align="left">
				<td><input type="text" name="file3"></td>
			</tr>
		</table>
		<table border="0" cellspacing="" cellpadding="" width="40%">
			4.在函数中使用else总是与________的if配对，而不管程序的书写格式如何。

			<tr align="left">
				<td><input type="text" name="file4"></td>
			</tr>
		</table>
		三、编程题：
		<table border="0" cellspacing="" cellpadding="" width="40%">
		1.随机输入十个整数，编程实现从大到小的排序。（冒泡排序）
			<tr align="left">
				<td><textarea rows="20" cols="100" name="dati1"></textarea></td>
			</tr>
		</table>
		<table border="0" cellspacing="" cellpadding="" width="40%">
			
	
		2.如图/*
                  打印出空心菱形。

			<tr align="left">
				<td><textarea rows="20" cols="100" name="dati2"></textarea></td>
			</tr>
		</table>
		<table align="center">
		<tr>
		<td align="center"><input type="submit" value="提交" style="width: 100px;height: 30px;"></td>
		</tr>
		</table>
		</tr>
		</table>
	</form>


</body>
</html>