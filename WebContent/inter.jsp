<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>在线考试</title>
<script type="text/javascript">
    		function logins(form2){
    			if(form2.password.value=="" || form2.password.value==null){
    				alert("密码不能为空!");
    				form1.password.focus();
    				return false;
    			}
    			return true;
    		}
</script>
</head>

<body>
	<form action="Login.java" method="get" name="form2">
		 姓 &nbsp;&nbsp;名：<input type="name" name="name"><br/>
		 账&nbsp;&nbsp;号<input type="number" name="number"><br/>
		 密&nbsp;&nbsp; 码：<input type="password" name="password"><br/>
	
		<input type="submit" value="登录">
		
	</form>


		</table>
	</form>
</body>
</html>