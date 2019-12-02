<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<%
	String name = request.getParameter("name");
	String exams = request.getParameter("exams");
%>

<br /> 
试卷<%=exams%>
<br />

<head>
<meta charset="utf-8">
<title>第一份试卷</title>
</head>
<body>
<form action="BaoCun?exams=<%=exams%>&name=<%=name%>" method="post">
		<table border="0" cellspacing="" cellpadding="" width="40%"
			height="40">
			1.下列合法的标识符为（）
			<tr align="left">
				<td><input type="radio" name="opt1" value="A">A.abcd+</td>
				<td><input type="radio" name="opt1" value="B">B.#KDJF</td>
				<td><input type="radio" name="opt1" value="C">C.67KDJ</td>
				<td><input type="radio" name="opt1" value="D">D.DK3</td>
			</tr>
			<br />
		</table>
		2.字符串"vm\x43\\\np\102q"的长度是（）
		<table border="0" cellspacing="" cellpadding="" width="40%"
			height="40">
			<tr align="left">
				<td><input type="radio" name="opt2" value="A">A. 8</td>
				<td><input type="radio" name="opt2" value="B">B. 10</td>
				<td><input type="radio" name="opt2" value="C">C.17</td>
				<td><input type="radio" name="opt2" value="D">D.16</td>
			</tr>
			<br />
		</table>
		<table border="0" cellspacing="" cellpadding="" width="90%"
			height="40">
			3.对for（表达式1; ;表达式3）可理解为（）
			<tr align="left">
				<td><input type="radio" name="opt3" value="A">A.for（表达式1;;表达式3)</td>
				<td><input type="radio" name="opt3" value="B">B.for（表达式1;1 ;表达式3）</td>
				<td><input type="radio" name="opt3" value="C">C.for（表达式1;表达式1;表达式3）</td>
				<td><input type="radio" name="opt3" value="D">D.for（表达式1;表达式3;表达式3）</td>
			</tr>
		</table>
		<table border="0" cellspacing="" cellpadding="" width="40%"
			height="40">
			4.若有代数式3ae/bc,则不正确的C语言表达式是（）
			<tr align="left">
				<td><input type="radio" name="opt4" value="A">A.?a/b/c*e*3?</td>
				<td><input type="radio" name="opt4" value="B">B.?3*a*e/b/c?</td>
				<td><input type="radio" name="opt4" value="C">C.?3*a*e/b*c?</td>
				<td><input type="radio" name="opt4" value="D">D.?a*e/c/b*3?</td>
			</tr>
		</table>
		二、填空题 <br />
		<table border="0" cellspacing="" cellpadding="" width="40%">
			1、.已知int?a[3][2]={3,?2,?1};则表达式“?a[0][0]/a[0][1]”的值是____。
			<tr align="left">
				<td><input type="text" name="file1"></td>
			</tr>
		</table>
		<table border="0" cellspacing="" cellpadding="" width="40%">
			2、下面程序段的运行结果为______。
			<br /> x=2;
			<br /> do{printf("*");?x--;?}?while(!x==0);?
			<tr align="left">
				<td><input type="text" name="file2"></td>
			</tr>
		</table>
		<table border="0" cellspacing="" cellpadding="" width="40%">
			3、设a、b、c均为int型变量且a=6,b=4,c=2,则表达式！(a-b)+c-1 && b+c/2的值是____________。
			<tr align="left">
				<td><input type="text" name="file3"></td>
			</tr>
		</table>
		<table border="0" cellspacing="" cellpadding="" width="40%">
			4、若有条件“2< x <3或x < -10”，其对应的C语言表达式是_____。
			<tr align="left">
				<td><input type="text" name="file4"></td>
			</tr>
		</table>
		三、编程题：
		<table border="0" cellspacing="" cellpadding="" width="40%">
			1.随机输入十个数，编程实现排序。（用选择排序）
			<tr align="left">
				<td><textarea rows="20" cols="100" name="dati1"></textarea></td>
			</tr>
		</table>
		<table border="0" cellspacing="" cellpadding="" width="40%">
			2.打印杨辉三角。
			<tr align="left">
				<td><textarea rows="20" cols="100" name="dati2"></textarea></td>
			</tr>
		</table>
		<table align="center">
		<tr>
		<td align="center"><input type="submit" value="提交" style="width: 100px;height: 30px;"></td>
		</tr>
		</table>
	</form>



</body>
</html>