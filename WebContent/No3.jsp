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
<title>第三份试卷</title>
</head>
<body>
<form action="BaoCun?exams=<%=exams%>&name=<%=name%>" method="post">
		<table border="0" cellspacing="" cellpadding="" width="40%"
			height="40">
			1.C语言的程序一行写不下时，可以().
			<tr align="left">
				<td><input type="radio" name="opt1" value="A">A.用逗号换行</td>
				<td><input type="radio" name="opt1" value="B">B.用分号换行</td>
				<td><input type="radio" name="opt1" value="C">C.在任意一空格处换行 </td>
				<td><input type="radio" name="opt1" value="D">D.用回车换行</td>
			</tr>
			<br />
		</table>
	   2. 下列正确的标识符是（ ）。
		<table border="0" cellspacing="" cellpadding="" width="40%"
			height="40">
			<tr align="left">
				<td><input type="radio" name="opt2" value="A">A. -a1 </td>
				<td><input type="radio" name="opt2" value="B">B. a[i] </td>
				<td><input type="radio" name="opt2" value="C">C.a2_i </td>
				<td><input type="radio" name="opt2" value="D">D.int t</td>
			</tr>
			<br />
		</table>
		<table border="0" cellspacing="" cellpadding="" width="90%"
			height="40">
			3. C语言中的简单数据类型包括（ ）
			<tr align="left">
				<td><input type="radio" name="opt3" value="A">A.整型、实型、逻辑型  </td>
				<td><input type="radio" name="opt3" value="B">B.整型、实型、逻辑型、字符型 </td>
				<td><input type="radio" name="opt3" value="C">C.整型、字符型、逻辑型 </td>
				<td><input type="radio" name="opt3" value="D">D.整型、实型、字符型</td>
			</tr>
		</table>
		<table border="0" cellspacing="" cellpadding="" width="40%"
			height="40">
			4. 若int x=2,y=3,z=4 则表达式(x++)<(--z)?y:z的结果是(   ).
			<tr align="left">
				<td><input type="radio" name="opt4" value="A">A.4</td>
				<td><input type="radio" name="opt4" value="B">B.3</td>
				<td><input type="radio" name="opt4" value="C">C.2</td>
				<td><input type="radio" name="opt4" value="D">D.1</td>
			</tr>
		</table>
		二、填空题 <br />
		<table border="0" cellspacing="" cellpadding="" width="40%">
			1、1.#include <stdio.h> 
                M a I n()
              { I nt sum = 10,n =1;
                 W hile(n<3)  {su m-=sum; n+ +}
                 Printf(“%d,%d”,n,s um);
               }
                   运行结果为:
			<tr align="left">
				<td><input type="text" name="file1"></td>
			</tr>
		</table>
		<table border="0" cellspacing="" cellpadding="" width="40%">
			2.#include <stdio.h> 
             main() 
            { int num,c; 
              scanf("%d",&num); 
              do {c=num%10;  printf("%d",c);  }while((num/=10)>0); 
              printf("\n"); 
            }
                     从键盘输入23,则运行结果为:
			<tr align="left">
				<td><input type="text" name="file2"></td>
			</tr>
		</table>
		<table border="0" cellspacing="" cellpadding="" width="40%">
			3、3.#include <stdio.h> 
              Main()
              { char   ch;
             Ch=getcahr();
             Switch(ch)
            { case ‘A’:printf(“%c”，‘A’)；
              Case ‘B’：printf（“%c”，‘B’）；break；
              Default：printf（“%s”，“other”）；
             }}
                    当从键盘输入字母A时，运行结果为：
			<tr align="left">
				<td><input type="text" name="file3"></td>
			</tr>
		</table>
		<table border="0" cellspacing="" cellpadding="" width="40%">
			4.#include <stdio.h> 
                Main（）
               {
               Int y=9；
               For（；y>0；y--）
		          If（y%3==0）
			          {printf（“%d”，--y）}
               }
	               运行结果为：
			<tr align="left">
				<td><input type="text" name="file4"></td>
			</tr>
		</table>
		
</body>
</html>