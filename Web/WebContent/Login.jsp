
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登录页</title>
<link rel="stylesheet"href="https://cdn.bootcss.com/bootstrap/4.1.0/css/bootstrap.css">
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/4.1.0/js/bootstrap.js"></script>
<link rel="stylesheet" type="text/css" href="Style.css">
<style>
html,body{
    width:100%;
    height:100%
}
body{
   background: url('https://s1.ax1x.com/2020/07/10/UM1hLR.jpg') no-repeat top left;
   background-size: 100%;

}
form{
background-color:rgba(0,0,0,0.2);
padding-bottom:50px;
padding-top:-70px;
padding-right:80px;
padding-left:80px;
margin-top:138px;
margin-left:600px;
}
.imgs{
margin-top:200px;
width:400px;
height:auto;
}
</style>
</head>
<body>

<!-- https://s1.ax1x.com/2020/07/11/Ula0eO.jpg -->
<!-- https://s1.ax1x.com/2020/07/10/UM1hLR.jpg -->

	<nav class="navbar navbar-expand-lg">
		<div class="container-fluid">

			<a class="navbar-brand"
				style="background: red; padding-left: 10px; padding-right: 10px; font-size: 20px; font-weight: 600; margin-left: 35px"
				href="#">登录</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNavDropdown">

			</div>
		</div>
	</nav>


<div class="container">
<div class="row">
<div class="col-md-3">

<form action="login.do" method="post" style="width:500px;height:400px;">
	<br/><br/>
	<br/>
	<div class="form-group">
		<label for="username">账号:</label>
		<input class="form-control" type="text" id="userName" name="userName"/>
	</div>
	
	<div class="form-group">
		<label for="password">密码：</label>
		<input class="form-control" type="password" id="userPassword" name="userPassword"/>
	</div>
	<br/>
	<a href="Register.jsp" >还没注册？点击注册</a><br/>
	 <input class="btn btn-block" type="submit" value="登录" onclick="loginCheck()" >
   </form>
</div>
</div>

<!-- <div class="col-md-8">
<img class="imgs" src="https://s1.ax1x.com/2020/07/11/UlUPUJ.gif" style="margin-left:280px;">

</div> -->
</div>
<script type="text/javascript">
function loginCheck() {
	var username = $("#userName").val();
	var password = $("#userPassword").val();
	if(username == "" || password == "") {
		alert("用户名或密码不能为空！")
	} else {
		$.post("demo_test_post.asp",
				  {
				    name:"Donald Duck",
				    city:"Duckburg"
				  },
				  function(data,status){
				    alert("Data: " + data + "\nStatus: " + status);
				  });
	}
}
</script>
</body>
</html>