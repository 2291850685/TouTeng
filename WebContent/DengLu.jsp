<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
 <script type="text/javascript">
    	function validate(form1){
    		if(form1.name.value==""||form1.name.value==null){
    			alert("用户名不能为空");
    			form1.name.focus() ;
    			return false ;
    		}
    		if(form1.id.value==""||form1.id.value==null){
    			alert("id不能为空");
    			form1.name.focus() ;
    			return false ;
    		}
    		if(form1.banji.value==""||form1.banji.value==null){
    			alert("班级不能为空");
    			form1.name.focus() ;
    			return false ;
    		}
    		
    		return true ;
    	}
    </script>

<title>考试登录入口</title>
</head>
<body>
<form action="DaTi" method="get" name="form1" onsubmit="return validate(this)">
    	<table align="center" border="0" cellpadding="30" cellspacing="0" width="38%" style="font-size: 26px;">
    		
    		<tr>
    			<td align="center">姓名<input type="text" name="name" placeholder="请输入姓名" style="height: 35px; width: 200px; color: red;"></td>
    		</tr>
    		<br/ >
    		<tr>
    			<td align="center">学号<input type="text" name="id" placeholder="请输入学号" style="height: 35px; width: 200px; color: red;"></td>
    		</tr>
    		<br />
    		<tr>
    			<td align="center">班级<input type="text" name="banji" placeholder="请输入班级" style="height: 35px; width: 200px; color: red;" ></td>
    		</tr>
    		<tr>
    			<td align="center"><input type="submit" value="登录" style="width: 100px;height: 30px;"></td>
    		</tr>
    		<tr>
    			<td align="center" style="font-style:italic;font-size: 30px;"><a href="inter.jsp">管理员入口 </a></td>
    		</tr>
    	</table>
    	</form>


</body>
</html>