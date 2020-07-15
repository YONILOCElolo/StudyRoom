<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="dao.searchDaoImpl,entity.Attribute,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>搜索页</title>
<link rel="stylesheet"href="https://cdn.bootcss.com/bootstrap/4.1.0/css/bootstrap.css">
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/4.1.0/js/bootstrap.js"></script>
<link rel="stylesheet" type="text/css" href="Style.css">
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-expand-lg">
		<div class="container-fluid">
			<a class="navbar-brand"
				style="background: red; padding-left: 10px; padding-right: 10px; font-size: 20px; font-weight: 600; margin-left: 35px"
				href="Index.jsp">首页</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNavDropdown">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="search.jsp"
						style="margin-left: 840px; padding: 11px;">搜索</a></li>
					<li class="nav-item "><a class="nav-link" href="collection.jsp"
						style="padding: 11px;">收藏夹</a></li>
					<li class="nav-item "><a class="nav-link" href="Welcome.jsp"
						style="padding: 11px; margin-left: 10px;">注册/注销</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="ImgBox">
		<img class="Img" src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1594446906042&di=edf48ae1d973619cb1b4bf800f06aaa4&imgtype=0&src=http%3A%2F%2Fimg.pconline.com.cn%2Fimages%2Fupload%2Fupc%2Ftx%2Fwallpaper%2F1308%2F17%2Fc2%2F24561028_1376699679460.jpg"
				alt="UFPoKU.jpg" border="0" style="font-size:0"/>
		<div class="scene">
			<div style="padding: 20px 300px 15px;" >
		    <form class="bs-example bs-example-form" role="form" >
		        <div class="row m-auto"><!-- /.col-lg-6 -->
		                <div class="input-group">
		                    <input type="text" class="form-control" id="txt" name="search">
		                    <span class="input-group-btn">
		                        <button class="btn btn-default" id="btn" type="submit" >搜索</button>
		                    </span>
		                </div><!-- /input-group -->
		           <!-- /.col-lg-6 -->
		        </div><!-- /.row -->
		    </form>
		</div>
	<%
		searchDaoImpl ssi = new searchDaoImpl();
		try {
			String webname = request.getParameter("search");
			if(webname == null) {
				webname = "";
			}
		List<Attribute> all = ssi.search(webname);
		Iterator<Attribute> it = all.iterator();
	%>
	<div style="padding: 15px 300px 15px;" >
		<div class="list-group">
		 <a href="#" class="list-group-item active">
	        <h3 class="list-group-item-heading"> 所有结果 </h3>
	    </a>
    <%
	if(!it.hasNext()) { %>
		<a href="#" class="list-group-item">
         <h4>暂无数据 </h4>
     
    	</a>
	<% }%>
    <%
	while(it.hasNext()) { 
		Attribute atri = it.next();
	%>
	
	    <a href="<%=atri.getWebsite() %>" class="list-group-item">
	         
	     <p class="text"> <%=atri.getWebName() %> </p>     
	    </a>
    <%} %>
    
		</div>
	</div>
	<%
		} catch(Exception e){
		    e.printStackTrace();
		}
	%> 
	</div>
</div>
</body>
</html>