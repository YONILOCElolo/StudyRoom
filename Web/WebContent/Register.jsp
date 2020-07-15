<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>注册</title>
<link rel="stylesheet"href="https://cdn.bootcss.com/bootstrap/4.1.0/css/bootstrap.css">
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/4.1.0/js/bootstrap.js"></script>
<link rel="stylesheet" type="text/css" href="Style.css">
<style>
.imgs{
width:700px;
height:auto;

}
form{
background-color:rgba(0,0,0,0.2);
padding-bottom:50px;
padding-top:20px;
padding-right:90px;
padding-left:90px;
margin-top:10px;
}
</style>
</head>
<body>
	<nav class="navbar navbar-expand-lg">
		<div class="container-fluid">

			<a class="navbar-brand"
				style="background: red; padding-left: 10px; padding-right: 10px; font-size: 20px; font-weight: 600; margin-left: 35px"
				href="#">注册</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
		
				</ul>

			</div>
		</div>
	</nav>




<div class="container" style="margin-top:30px;">
<div class="row">
<div class="col-md-5">


	<form action="register.do" method="post" width="300" border="0" >
	<div class="form-group">
	<label for="name">*用户名:</label>
	<input type="text" id="username" name="username" placeholder="username" size="10" class="form-control"/>
    </div>
    	<div class="form-group">
	<label for="name">*用户性别:</label>
	<input type="text" id="sex"  name="sex" placeholder="username" size="10" class="form-control"/>
    </div>
    	<div class="form-group">
	<label for="name">*密码:</label>
	<input type="password" id="password1"  name="password1" placeholder="password" size="10" class="form-control"/>
    </div>
    	<div class="form-group">
	<label for="name">*确认密码:</label>
	<input type="password" id="password"  name="password" placeholder="password" size="10" class="form-control"/>
    </div>
    <br>
	<input class="btn btn-block" type="submit" value="注册" >
		</form>
</div>

<div class="col-md-6">
<img class="imgs" src="https://s1.ax1x.com/2020/07/10/UMJ36g.gif">
</div>
</div>
</div>
<script type="text/javascript">
function loginCheck() {
	var username = $("#username").val();
	var password = $("#password").val();
	var sex = $("#sex").val();
	var password1 = $("#password1").val();
	if(username == "" || password == "") {
		alert("输入不能为空！")
	}
}
</script>
</body>
</html>