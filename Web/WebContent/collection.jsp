<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="dao.collectionDaoImpl,dao.userId,entity.Collection,entity.User,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>收藏页</title>
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
	<div>
	<img src="https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1795938929,1949566020&fm=26&gp=0.jpg"
				style="display：block; margin:-70px;" width="1600" height="280"/>
	</div>
	<br><br><br>
	 <div align="center">
		<h3>收藏夹</h3>
	</div>
<div class="container">
    <div class="row">
        <div class="col-sm-1">
           
            <ul id="myTab" class="nav nav-pills nav-stacked nav-tabs">
                <li class="active"><a href="#study" data-toggle="tab">学习</a></li>
                <li><a href="#shop" data-toggle="tab">视频</a></li>
                <li><a href="#tool" data-toggle="tab">好物</a></li>
            </ul>
        </div>
	   <%
		collectionDaoImpl cdi = new collectionDaoImpl();
		List<Integer> userList= userId.getInstance();
		if (userList != null && userList.size() > 0){
			List<Collection> studyList = cdi.studyList(userList.get(0));
			List<Collection> videoList = cdi.videoList(userList.get(0));
			List<Collection> shopList = cdi.shopList(userList.get(0));
			Iterator<Collection> it1 = studyList.iterator();
			Iterator<Collection> it2 = videoList.iterator();
			Iterator<Collection> it3 = shopList.iterator();
		%>
        <div class="col-sm-10">
	        <div id="myTabContent" class="tab-content">
	            <div class="tab-pane fade in active" id="study">
	            
	            <%
					while(it1.hasNext()) { 
						Collection col1 = it1.next();
				%>
	                <ul class="list-group">
	                    <li class="list-group-item" ><a href="<%=col1.getWebsiteAdress()%>"><%=col1.getWebsiteName()%></a></li>
	                </ul>
	            <%} %>
	            </div>
	            <div class="tab-pane fade" id="shop">
	            
	             <%
					while(it2.hasNext()) { 
						Collection col2= it2.next();
				%>
	                <ul class="list-group">
	                    <li class="list-group-item" ><a href="<%=col2.getWebsiteAdress()%>"><%=col2.getWebsiteName()%></a></li>
	                </ul>
	            <%} %>
	            </div>
	            <div class="tab-pane fade" id="tool">
	            <%
					while(it3.hasNext()) { 
						Collection col3= it3.next();
				%>
	                <ul class="list-group">
	                    <li class="list-group-item" ><a href="<%=col3.getWebsiteAdress()%>"><%=col3.getWebsiteName()%></a></li>
	                </ul>
	             <%} }%>
     
       		 </div>
        </div>
    </div>
    </div>
</div>
</body>
</html>