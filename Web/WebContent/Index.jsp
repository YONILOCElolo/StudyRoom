<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>欢迎页</title>
<link rel="stylesheet"
	href="https://cdn.bootcss.com/bootstrap/4.1.0/css/bootstrap.css">
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/4.1.0/js/bootstrap.js"></script>
<link rel="stylesheet" type="text/css" href="Style.css">
</head>
<!-- 
		<button type="button" class="btn btn-default" id="btn_collect_0">
            <span class="glyphicon glyphicon-star-empty" id="btn_collect_icon" aria-hidden="true"></span>收藏
        </button>
        //从0到29依次类推
        <button type="button" class="btn btn-default" id="btn_collect_1">
            <span class="glyphicon glyphicon-star-empty" id="btn_collect_icon" aria-hidden="true"></span>收藏
        </button>
-->
<body>
	<script type="text/javascript">
		/*点击弹出按钮*/function popBox() {
			var popBox = document.getElementById("popBox");
			var popLayer = document.getElementById("popLayer");
			popBox.style.display = "block";
			popLayer.style.display = "block";
		}; /*点击关闭按钮*/
		function closeBox() {
			var popBox = document.getElementById("popBox");
			var popLayer = document.getElementById("popLayer");
			popBox.style.display = "none";
			popLayer.style.display = "none";
		}
	</script>
	<nav class="navbar navbar-expand-lg">
		<div class="container-fluid">

			<a class="navbar-brand"
				style="background: red; padding-left: 10px; padding-right: 10px; font-size: 20px; font-weight: 600; margin-left: 35px"
				href="#">首页</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNavDropdown">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="search.jsp"
						style="margin-left: 780px; padding: 11px;">搜索</a></li>
					<li class="nav-item "><a class="nav-link"
						href="collection.jsp" style="padding: 11px;">收藏夹</a></li>

					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#"
						id="navbarDropdownMenuLink" role="button" data-toggle="dropdown"
						aria-expanded="false" style="padding: 11px;"> 分类 </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
							<li><a class="dropdown-item" href="#fat">♥学习区</a></li>
							<li><a class="dropdown-item" href="#mdo">♥视频区</a></li>
							<li><a class="dropdown-item" href="#one">♥好物分享</a></li>
						</ul></li>
					<li class="nav-item "><a class="nav-link" href="Welcome.jsp"
						style="padding: 11px; margin-left: 10px;">注册/注销</a></li>
				</ul>

			</div>
		</div>
	</nav>



	<div class="headImgBox">
		<img class="headImg" src="https://s1.ax1x.com/2020/07/06/UFAMZD.jpg"
			alt="UFPoKU.jpg" border="0" />
		<div class="scene">
			<div>
				<span id="luke">Welcome to StudyRoom !</span>


			</div>
		</div>
		<div class="h-information">
			<!-- 轮播图 -->
			<h5 class="h-litlletitle">2020 春季小学期</h5>


			<h2 class="h-description">
				<a href="#">---------♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥-------</a><br />
			</h2>
			<!-- 	<br /> <a href="#"> ♥ About US♥</a> -->

			<!-- 弹框 -->
			<input type="button" name="popBox" class="buttn"
				value="♥ 关于  '爸爸说的都队' ♥" onclick="popBox()">
			<div id="popLayer"></div>
			<div id="popBox">
				<div class="close">
					<a href="javascript:void(0)" onclick="closeBox()">关闭</a>
				</div>
				<div class="content">啦啦啦啦啦啦</div>
			</div>


			<!-- 结束弹框 -->

			<!-- 轮播图 -->
			<div id="carouselExampleCaptions" class="carousel slide"
				style="width: 75%; margin: 0 auto;" data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#carouselExampleCaptions" data-slide-to="0"
						class="active"></li>
					<li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
					<li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
				</ol>
				<div class="carousel-inner">
					<div class="carousel-item active" data-interval="10000">
						<a
							href="https://www.zhihu.com/question/395039610/answer/1227381666">
							<img src="https://s1.ax1x.com/2020/07/07/UFn5FO.jpg"
							class="d-block w-100" alt="尖子生的学习方法">
						</a>

						<div class="carousel-caption d-none d-md-block">
							<h4
								style="font-size: 40px; color: white; background-color: black; opacity: 0.8;">尖子生的学习方法</h4>
							<p
								style="font-size: 20px; color: white; background-color: rgba(0, 0, 0, 0.3);">快来看看别人怎么学习</p>
						</div>
					</div>
					<div class="carousel-item" data-interval="2000">
						<a href="https://www.zhihu.com/question/47167654/answer/884449148"><img
							src="https://s1.ax1x.com/2020/07/07/UAgSds.jpg"
							class="d-block w-100" alt="综艺娱乐"></a>
						<div class="carousel-caption d-none d-md-block">
							<h4
								style="font-size: 40px; color: white; background-color: black; opacity: 0.8;">综艺娱乐</h4>
							<p
								style="font-size: 20px; color: white; background-color: rgba(0, 0, 0, 0.3);">看高分综艺</p>
						</div>
					</div>
					<div class="carousel-item">
						<a href="https://zhuanlan.zhihu.com/p/132480741"><img
							src="https://s1.ax1x.com/2020/07/07/UAg3QO.jpg"
							class="d-block w-100" alt="美剧推荐"></a>
						<div class="carousel-caption d-none d-md-block">
							<h4
								style="font-size: 40px; color: white; background-color: black; opacity: 0.8;">美剧推荐</h4>
							<p
								style="font-size: 20px; color: white; background-color: rgba(0, 0, 0, 0.3);">提升英语听力啦.</p>
						</div>
					</div>
				</div>
				<a class="carousel-control-prev" href="#carouselExampleCaptions"
					role="button" data-slide="prev"> <span
					class="carousel-control-prev-icon" aria-hidden="true"></span> <span
					class="sr-only">Previous</span>
				</a> <a class="carousel-control-next" href="#carouselExampleCaptions"
					role="button" data-slide="next"> <span
					class="carousel-control-next-icon" aria-hidden="true"></span> <span
					class="sr-only">Next</span>
				</a>
			</div>
		</div>
	</div>


	<!-- 具体学习视频商城分区 -->

	<nav id="navbar-example2" class="newnavbar navbar-light bg-light px-3">

		<div class="navbar-brand-fenqu">
			<a href="#">-关于-</a><br />
		</div>
		<a href="#" style="font-size: 18px;">---------♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥-------</a><br />
		<ul class="nav nav-pills"
			style="width: 360px; margin: 0 auto; text-align: center;">
			<li class="nav-item mid-fenqu"><a
				class="nav-link nav-link-fenqu" href="#fat">♥学习区</a></li>
			<li class="nav-item mid-fenqu"><a
				class="nav-link nav-link-fenqu" href="#mdo">♥视频区</a></li>
			<li class="nav-item dropdown mid-fenqu"><a
				class="nav-link dropdown-toggle nav-link-fenqu"
				data-toggle="dropdown" href="#" role="button" aria-expanded="false">♥好物推荐</a>
				<ul class="dropdown-menu fenqu dropdown-menu-right">
					<li><a class="dropdown-item " href="#one">编译工具推荐</a></li>
					<li><a class="dropdown-item " href="#two">好书分享</a></li>
					<li><hr class="dropdown-divider"></li>
					<li><a class="dropdown-item " href="#three">精品课程</a></li>
				</ul></li>
		</ul>
	</nav>
	<div data-spy="scroll" class="titlediv-fenqu"
		data-target="#navbar-example2" data-offset="0">
		<h4 id="fat" class="title-fenqu">
			------------------------
			<kbd>⭐学习区⭐</kbd>

			------------------------
		</h4>

		<div class="container">
			<div class="row">
				<div class="col-md-4" style="margin: 0 auto;">
					<form action="collectionServlet">
						<a href="http://www.wordlm.com/"> <img class="fenxu-study"
							src="https://s1.ax1x.com/2020/07/07/UkusoV.jpg">
							<p class="font">word联盟</p>
						</a> <input type="button" theHref="http://www.wordlm.com/"
							webName="word联盟" theType="学习" collectionID="X001"
							style="border: none; margin: -4px 0 20px 153px; padding-left: 3px; padding-top: 3px; width: 55px; height: 29px; font-size: 15px; outline: none;"
							value="收藏" data-v="已收藏"
							onclick="var s=this.value;this.value=this.dataset.v;this.dataset.v=s;" />
					</form>
				</div>

				<div class="col-md-4">
					<form action="collectionServlet">
						<a href="http://www.doyoudo.com/"> <img class="fenxu-study"
							src="https://s1.ax1x.com/2020/07/07/Ukurd0.jpg">
							<p class="font">doyoudo</p>
						</a> <input type="button" theHref="http://www.doyoudo.com/"
							webName="doyoudo" theType="学习" collectionID="X002"
							style="border: none; margin: -4px 0 20px 153px; padding-left: 3px; padding-top: 3px; width: 55px; height: 29px; font-size: 15px; outline: none;"
							value="收藏" data-v="已收藏"
							onclick="var s=this.value;this.value=this.dataset.v;this.dataset.v=s;" />
					</form>
				</div>
				<div class="col-md-4">
					<form action="collectionServlet">
						<a href="http://www.xiazaij.com/"> <img class="fenxu-study"
							src="https://s1.ax1x.com/2020/07/07/UkuHJO.jpg">
							<p class="font">下载街</p>
						</a> <input type="button" theHref="http://www.xiazaij.com/"
							webName="下载街" theType="学习" collectionID="X003"
							style="border: none; margin: -4px 0 20px 153px; padding-left: 3px; padding-top: 3px; width: 55px; height: 29px; font-size: 15px; outline: none;"
							value="收藏" data-v="已收藏"
							onclick="var s=this.value;this.value=this.dataset.v;this.dataset.v=s;" />
					</form>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4">
					<form action="collectionServlet">
						<a href="http://www.howzhi.com/"> <img class="fenxu-study"
							src="https://s1.ax1x.com/2020/07/07/UkugWF.jpg">
							<p class="font">好知网</p>
						</a> <input type="button" theHref="http://www.howzhi.com/"
							webName="好知网" theType="学习" collectionID="X004"
							style="border: none; margin: -4px 0 20px 153px; padding-left: 3px; padding-top: 3px; width: 55px; height: 29px; font-size: 15px; outline: none;"
							value="收藏" data-v="已收藏"
							onclick="var s=this.value;this.value=this.dataset.v;this.dataset.v=s;" />
					</form>
				</div>

				<div class="col-md-4">
					<form action="collectionServlet">
						<a href="https://www.icourse163.org/"> <img
							class="fenxu-study"
							src="https://s1.ax1x.com/2020/07/07/UkuxeI.jpg">
							<p class="font">中国大学生MOOC</p>
						</a> <input type="button" theHref="https://www.icourse163.org/"
							webName="中国大学生MOOC" theType="学习" collectionID="X005"
							style="border: none; margin: -4px 0 20px 153px; padding-left: 3px; padding-top: 3px; width: 55px; height: 29px; font-size: 15px; outline: none;"
							value="收藏" data-v="已收藏"
							onclick="var s=this.value;this.value=this.dataset.v;this.dataset.v=s;" />
					</form>
				</div>
				<div class="col-md-4">
					<form action="collectionServlet">
						<a href="http://www.51zxw.net/"> <img class="fenxu-study"
							src="https://s1.ax1x.com/2020/07/07/UkubWD.jpg">
							<p class="font">我要自学网</p>
						</a> <input type="button" theHref="http://www.51zxw.net/"
							webName="我要自学网" theType="学习" collectionID="X006"
							style="border: none; margin: -4px 0 20px 153px; padding-left: 3px; padding-top: 3px; width: 55px; height: 29px; font-size: 15px; outline: none;"
							value="收藏" data-v="已收藏"
							onclick="var s=this.value;this.value=this.dataset.v;this.dataset.v=s;" />
					</form>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4">
					<form action="collectionServlet">
						<a href="https://www.shiyanlou.com/courses/"> <img
							class="fenxu-study"
							src="https://s1.ax1x.com/2020/07/07/UkuWQJ.jpg">
							<p class="font">实验楼</p>
						</a> <input type="button" theHref="https://www.shiyanlou.com/courses/"
							webName="实验楼" theType="学习" collectionID="X007"
							style="border: none; margin: -4px 0 20px 153px; padding-left: 3px; padding-top: 3px; width: 55px; height: 29px; font-size: 15px; outline: none;"
							value="收藏" data-v="已收藏"
							onclick="var s=this.value;this.value=this.dataset.v;this.dataset.v=s;" />
					</form>
				</div>

				<!-- 				<div class="col-md-4">
					<a href="http://www.xuetangx.com/"> <img class="fenxu-study"
						src="https://s1.ax1x.com/2020/07/07/UkuOQH.jpg">
						<p class="font">学堂在线</p>
					</a> <input type="button"
						style="border: none; margin: -4px 0 20px 153px; padding-left: 3px; padding-top: 3px; width: 55px; height: 29px; font-size: 15px; outline: none;"
						value="收藏" data-v="已收藏"
						onclick="var s=this.value;this.value=this.dataset.v;this.dataset.v=s;" />
				</div> -->

			</div>


		</div>
	</div>


	<h4 id="mdo" class="title-fenqu">
		---------------------------
		<kbd>⭐视频区⭐</kbd>
		---------------------------
	</h4>

	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<form action="collectionServlet">
					<a href="https://m.v.qq.com/"> <img class="fenxu-study"
						src="https://s1.ax1x.com/2020/07/07/UkuIdx.jpg">
						<p class="font">腾讯视频</p>
					</a> <input type="button" theHref="https://m.v.qq.com/" webName="腾讯视频"
						theType="视频" collectionID="S001"
						style="border: none; margin: -4px 0 20px 153px; padding-left: 3px; padding-top: 3px; width: 55px; height: 29px; font-size: 15px; outline: none;"
						value="收藏" data-v="已收藏"
						onclick="var s=this.value;this.value=this.dataset.v;this.dataset.v=s;" />
				</form>
			</div>

			<div class="col-md-4">
				<form action="collectionServlet">
					<a href="https://m.iqiyi.com/"> <img class="fenxu-study"
						src="https://s1.ax1x.com/2020/07/07/Uku0Ln.jpg">
						<p class="font">爱奇艺</p>
					</a> <input type="button" theHref="https://m.iqiyi.com/" webName="爱奇艺"
						theType="视频" collectionID="S002"
						style="border: none; margin: -4px 0 20px 153px; padding-left: 3px; padding-top: 3px; width: 55px; height: 29px; font-size: 15px; outline: none;"
						value="收藏" data-v="已收藏"
						onclick="var s=this.value;this.value=this.dataset.v;this.dataset.v=s;" />
					<!-- 	<div class="container">
					<button type="button" class="btn btn-default" id="btn_collect">
						<span class="glyphicon glyphicon-star-empty" id="btn_collect_icon"
							aria-hidden="true"></span>收藏
					</button>
				</div> -->
				</form>
			</div>
			<div class="col-md-4">
				<form action="collectionServlet">
					<a href="https://www.youku.com/"> <img class="fenxu-study"
						src="https://s1.ax1x.com/2020/07/07/UkujOA.jpg">
						<p class="font">优酷</p>
					</a> <input type="button" theHref="https://www.youku.com/" webName="优酷"
						theType="视频" collectionID="S003"
						style="border: none; margin: -4px 0 20px 153px; padding-left: 3px; padding-top: 3px; width: 55px; height: 29px; font-size: 15px; outline: none;"
						value="收藏" data-v="已收藏"
						onclick="var s=this.value;this.value=this.dataset.v;this.dataset.v=s;" />
				</form>
			</div>
		</div>

		<div class="row">
			<div class="col-md-4">
				<form action="collectionServlet">
					<a href="https://m.v.qq.com/"> <img class="fenxu-study"
						src="https://s1.ax1x.com/2020/07/07/Ukufy9.jpg">
						<p class="font">搜狐视频</p>
					</a> <input type="button" theHref="https://m.v.qq.com/" webName="搜狐视频"
						theType="视频" collectionID="S004"
						style="border: none; margin: -4px 0 20px 153px; padding-left: 3px; padding-top: 3px; width: 55px; height: 29px; font-size: 15px; outline: none;"
						value="收藏" data-v="已收藏"
						onclick="var s=this.value;this.value=this.dataset.v;this.dataset.v=s;" />
				</form>
			</div>

			<div class="col-md-4">
				<form action="collectionServlet">
					<a href="https://m.iqiyi.com/"> <img class="fenxu-study"
						src="https://s1.ax1x.com/2020/07/07/Uku2z4.jpg">
						<p class="font">芒果TV</p>
					</a> <input type="button" theHref="https://m.iqiyi.com/" webName="芒果TV"
						theType="视频" collectionID="S005"
						style="border: none; margin: -4px 0 20px 153px; padding-left: 3px; padding-top: 3px; width: 55px; height: 29px; font-size: 15px; outline: none;"
						value="收藏" data-v="已收藏"
						onclick="var s=this.value;this.value=this.dataset.v;this.dataset.v=s;" />
				</form>
			</div>
			<div class="col-md-4">
				<form action="collectionServlet">
					<a href="https://www.youku.com/"> <img class="fenxu-study"
						src="https://s1.ax1x.com/2020/07/07/UkudMj.jpg">
						<p class="font">BLIBILI</p>
					</a> <input type="button" theHref="https://www.youku.com/"
						webName="BLIBILI" theType="视频" collectionID="S006"
						style="border: none; margin: -4px 0 20px 153px; padding-left: 3px; padding-top: 3px; width: 55px; height: 29px; font-size: 15px; outline: none;"
						value="收藏" data-v="已收藏"
						onclick="var s=this.value;this.value=this.dataset.v;this.dataset.v=s;" />
				</form>
			</div>
		</div>


	</div>








	<!-- 编译工具推荐 -->



	<h4 class="title-fenqu">
		---------------------------
		<kbd>⭐Share好物⭐</kbd>
		---------------------------
	</h4>
	<h4 id="one" class="buything">编译工具推荐⭐⭐⭐</h4>
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<p>
					<kbd>1.c/c++/c#</kbd>
				</p>
				<form action="collectionServlet">
					<a href="https://www.microsoftstore.com.cn/c/visual-studio"> <img
						class="fenxu-study"
						src="https://s1.ax1x.com/2020/07/07/UAl3MF.jpg">
						<p class="font">Visual Studio</p>
						<p>特点：· C# .NET4.0中的动态类型和动态编程；· 支持Office ；·
							支持新C++标准，增强IDE，切实提高程序员开发效率。· 支持多种编程语言编写，C#、C++、Python、Visual
							Basic、· · · Node.js、HTML、JavaScript等等主流高低级编程语言。·
							拥有强大的可视化布局功能，可以实时的展示界面布局效果。</p>
					</a> <input type="button"
						theHref="https://www.microsoftstore.com.cn/c/visual-studio"
						webName="Visual Studio" theType="编译工具" collectionID="H001"
						style="border: none; margin: -4px 0 20px 153px; padding-left: 3px; padding-top: 3px; width: 55px; height: 29px; font-size: 15px; outline: none;"
						value="收藏" data-v="已收藏"
						onclick="var s=this.value;this.value=this.dataset.v;this.dataset.v=s;" />
				</form>
			</div>

			<div class="col-md-4">
				<p>
					<kbd>2.Java</kbd>
				</p>
				<form action="collectionServlet">
					<a href="http://www.ddooo.com/softdown/92290.htm"> <img
						class="fenxu-study"
						src="https://s1.ax1x.com/2020/07/07/UAlMGV.jpg">
						<p class="font">MyEclipse</p>
						<p>特点： · 插件丰富； · 跨平台支持Windows、 Linux、Mac OS X等操作系统； ·
							支持代码的调试、编译、分析、自动完成与重构； · 拥有强大的可视化布局功能，可以实时的展示界面布局效果。</p>
					</a> <input type="button"
						theHref="http://www.ddooo.com/softdown/92290.htm"
						webName="MyEclipse" theType="编译工具" collectionID="H002"
						style="border: none; margin: -4px 0 20px 153px; padding-left: 3px; padding-top: 3px; width: 55px; height: 29px; font-size: 15px; outline: none;"
						value="收藏" data-v="已收藏"
						onclick="var s=this.value;this.value=this.dataset.v;this.dataset.v=s;" />
				</form>
			</div>
			<div class="col-md-4">
				<p>
					<kbd>3.Java</kbd>
				</p>
				<form action="collectionServlet">
					<a href="http://www.ddooo.com/softdown/167081.htm/"> <img
						class="fenxu-study"
						src="https://s1.ax1x.com/2020/07/07/UAlQ2T.jpg">
						<p class="font">IntelliJ IDEA</p>
						<p>特点：最突出的功能自然是调试（Debug)，可 IntelliJ IDEA与其他IDE对比图
							以对Java代码，JavaScript，JQuery，Ajax等技术进行调试。
							比如查看Map类型的对象，如果实现类采用的是哈希映射，则会自动过滤空的Entry实例。
							其次，需要动态Evaluate一个表达式的值，比如我得到了一个类的实例，但是并不知晓它的API，可以通过Code
							Completion点出它所支持的方法。 最后，在多线程调试的情况下，Log on
							console的功能可以帮你检查多线程执行的情况</p>
					</a> <input type="button"
						theHref="http://www.ddooo.com/softdown/167081.htm/"
						webName="IntelliJ IDEA" theType="编译工具" collectionID="H003"
						style="border: none; margin: -4px 0 20px 153px; padding-left: 3px; padding-top: 3px; width: 55px; height: 29px; font-size: 15px; outline: none;"
						value="收藏" data-v="已收藏"
						onclick="var s=this.value;this.value=this.dataset.v;this.dataset.v=s;" />
				</form>
			</div>
		</div>

		<div class="row">
			<div class="col-md-4">
				<p>
					<kbd>4.Python</kbd>
				</p>
				<form action="collectionServlet">
					<a href="https://www.paddlepaddle.org.cn/install/quick"> <img
						class="fenxu-study"
						src="https://s1.ax1x.com/2020/07/07/UAllxU.jpg">
						<p class="font">IntelliJ IDEA</p>
						<p>特点： · 专为Python提供代码完成，快速切换语法，错误代码高亮显示和代码检查； ·
							项目查看，文件结构查看，在文件，类，方法间快速跳转； · 快速进行代码分析，错误高亮显示和快速修复； ·
							跨平台支持Windows、 Linux、Mac OS X等操作系统。</p>
					</a> <input type="button"
						theHref="https://www.paddlepaddle.org.cn/install/quick"
						webName="IntelliJ IDEA" theType="编译工具" collectionID="H004"
						style="border: none; margin: -4px 0 20px 153px; padding-left: 3px; padding-top: 3px; width: 55px; height: 29px; font-size: 15px; outline: none;"
						value="收藏" data-v="已收藏"
						onclick="var s=this.value;this.value=this.dataset.v;this.dataset.v=s;" />
				</form>
			</div>

			<div class="col-md-4">
				<p>
					<kbd>5.Vue</kbd>
				</p>
				<form action="collectionServlet">
					<a href="https://pc.qq.com/detail/16/detail_22856.html"> <img
						class="fenxu-study"
						src="https://s1.ax1x.com/2020/07/07/UAlKP0.jpg">
						<p class="font">Visual Studio Code</p>
						<p>特点： · 免费开源； · 跨平台支持Windows、 Linux、Mac OS X等操作系统； ·
							智能代码补全、智能保存、错误代码高亮显示、自定义热键、括号匹配、代码片段、代码对比、代码检查等； ·
							插件丰富，通过安装插件支持30多种编程语言开发，如C/C++、C#、.Net、Java、PHP、Python、TypeScript、Objective-C、Vue、JavaScript、CSS、HTML等等。
						</p>
					</a> <input type="button"
						theHref="https://pc.qq.com/detail/16/detail_22856.html"
						webName="Visual Studio Code" theType="编译工具" collectionID="H005"
						style="border: none; margin: -4px 0 20px 153px; padding-left: 3px; padding-top: 3px; width: 55px; height: 29px; font-size: 15px; outline: none;"
						value="收藏" data-v="已收藏"
						onclick="var s=this.value;this.value=this.dataset.v;this.dataset.v=s;" />
				</form>
			</div>
			<div class="col-md-4">
				<p>
					<kbd>6.Android</kbd>
				</p>
				<form action="collectionServlet">
					<a href="www.android-studio.org/"> <img class="fenxu-study"
						src="https://s1.ax1x.com/2020/07/07/UAl8r4.jpg">
						<p class="font">Android studio</p>
						<p>特点： · 跟Microsoft Visual
							Studio一样，拥有强大的可视化布局功能，可以实时的展示界面布局效果； · Android
							Studio支持了多种插件，可直接在插件管理中下载所需的插件； · 智能代码补全、智能保存、错误代码高亮显示、代码检查等； ·
							内置模拟终端。</p>
					</a> <input type="button" theHref="www.android-studio.org/"
						webName="Android studio" theType="编译工具" collectionID="H006"
						style="border: none; margin: -4px 0 20px 153px; padding-left: 3px; padding-top: 3px; width: 55px; height: 29px; font-size: 15px; outline: none;"
						value="收藏" data-v="已收藏"
						onclick="var s=this.value;this.value=this.dataset.v;this.dataset.v=s;" />
				</form>
			</div>
		</div>

	</div>

	<!-- 	好书分享 -->
	<h4 id="two" class="buything" style="margin-bottom: 30px;">好书分享⭐⭐⭐</h4>

	<div class="container">

		<div class="row" style="margin-bottom: 30px;">
			<form action="collectionServlet">
				<div class="col-md-4">
					<a href="https://book.douban.com/subject/25809330/"> <img
						class="fenxu-studybook"
						src="https://s1.ax1x.com/2020/07/07/UA8Vqe.jpg"></a>
				</div>

				<div class="col-md-8">
					<p class="font">《Linux/UNIX系统编程手册》</p>
					<p>内容简介：《linux/unix系统编程手册(上、下册)》是介绍linux与unix编程接口的权威著作。linux编程资深专家michael
						kerrisk在书中详细描述了linux/unix系统编程所涉及的系统调用和库函数，并辅之以全面而清晰的代码示例。《linux/unix系统编程手册(上、下册)》涵盖了逾500个系统调用及库函数，并给出逾200个程序示例，另含88张表格和115幅示意图。</p>

					<input type="button"
						theHref="https://book.douban.com/subject/25809330/"
						webName="Linux/UNIX系统编程手册" theType="好书" collectionID="B001"
						style="border: none; margin: -4px 0 20px 153px; padding-left: 3px; padding-top: 3px; width: 55px; height: 29px; font-size: 15px; outline: none;"
						value="收藏" data-v="已收藏"
						onclick="var s=this.value;this.value=this.dataset.v;this.dataset.v=s;" />
				</div>
			</form>
		</div>

		<div class="row" style="margin-bottom: 30px;">
			<form action="collectionServlet">
				<div class="col-md-4">
					<a href="https://book.douban.com/subject/26381341/"> <img
						class="fenxu-studybook"
						src="https://s1.ax1x.com/2020/07/07/UA8nIA.jpg">
					</a>
				</div>

				<div class="col-md-8">
					<p class="font">《Python Cookbook 中文版（第 3 版）》</p>
					<p>内容简介：《Python
						Cookbook（第3版）中文版》介绍了Python应用在各个领域中的一些使用技巧和方法，其主题涵盖了数据结构和算法，字符串和文本，数字、日期和时间，迭代器和生成器，文件和I/O，数据编码与处理，函数，类与对象，元编程，模块和包，网络和Web编程，并发，实用脚本和系统管理，测试、调试以及异常，C语言扩展等。</p>
					<input type="button"
						theHref="https://book.douban.com/subject/26381341/"
						webName="Python Cookbook 中文版（第 3 版）" theType="好书"
						collectionID="B002"
						style="border: none; margin: -4px 0 20px 153px; padding-left: 3px; padding-top: 3px; width: 55px; height: 29px; font-size: 15px; outline: none;"
						value="收藏" data-v="已收藏"
						onclick="var s=this.value;this.value=this.dataset.v;this.dataset.v=s;" />
				</div>
			</form>
		</div>
		<div class="row" style="margin-bottom: 30px;">
			<form action="collectionServlet">
				<div class="col-md-4">

					<a href="https://book.douban.com/subject/26792521/"> <img
						class="fenxu-studybook"
						src="https://s1.ax1x.com/2020/07/07/UA8eVH.jpg">
					</a>
				</div>

				<div class="col-md-8">
					<p class="font">《C Primer Plus（第6版）中文版》</p>
					<p>内容简介:《C Primer
						Plus（第6版）中文版》共17章。第1、2章介绍了C语言编程的预备知识。第3~15章详细讲解了C语言的相关知识，包括数据类型、格式化输入/输出、运算符、表达式、语句、循环、字符输入和输出、函数、数组和指针、字符和字符串函数、内存管理、文件输入输出、结构、位操作等。第16章、17章介绍C预处理器、C库和高级数据表示。本书以完整的程序为例，讲解C语言的知识要点和注意事项。每章末设计了大量复习题和编程练习，帮助读者巩固所学知识和提高实际编程能力。附录给出了各章复习题的参考答案和丰富的参考资料。</p>
					<input type="button"
						theHref="https://book.douban.com/subject/26792521/"
						webName="C Primer Plus（第6版）中文版" theType="好书" collectionID="B003"
						style="border: none; margin: -4px 0 20px 153px; padding-left: 3px; padding-top: 3px; width: 55px; height: 29px; font-size: 15px; outline: none;"
						value="收藏" data-v="已收藏"
						onclick="var s=this.value;this.value=this.dataset.v;this.dataset.v=s;" />
				</div>
			</form>
		</div>


		<div class="row" style="margin-bottom: 30px;">
			<form action="collectionServlet">
				<div class="col-md-4">
					<a href="https://book.douban.com/subject/26836700/"> <img
						class="fenxu-studybook"
						src="https://s1.ax1x.com/2020/07/07/UA8mad.jpg">
					</a>
				</div>

				<div class="col-md-8">
					<p class="font">《Python编程快速上手 : 让繁琐工作自动化》</p>
					<p>内容简介:本书是一本面向实践的Python编程实用指南。本书的目的，不仅是介绍Python语言的基础知识，而且还通过项目实践教会读者如何应用这些知识和技能。本书的首部分介绍了基本Python编程概念，第二部分介绍了一些不同的任务，通过编写Python程序，可以让计算机自动完成它们。第二部分的每一章都有一些项目程序，供读者学习。每章的末尾还提供了一些习题和深入的实践项目，帮助读者巩固所学的知识。附录部分提供了所有习题的解答。</p>
					<input type="button"
						theHref="https://book.douban.com/subject/26836700/"
						webName="Python编程快速上手 : 让繁琐工作自动化" theType="好书" collectionID="B004"
						style="border: none; margin: -4px 0 20px 153px; padding-left: 3px; padding-top: 3px; width: 55px; height: 29px; font-size: 15px; outline: none;"
						value="收藏" data-v="已收藏"
						onclick="var s=this.value;this.value=this.dataset.v;this.dataset.v=s;" />
				</div>
			</form>
		</div>

		<div class="row" style="margin-bottom: 30px;">
			<form action="collectionServlet">

				<div class="col-md-4">
					<a href="https://book.douban.com/subject/25900403/"> <img
						class="fenxu-studybook"
						src="https://s1.ax1x.com/2020/07/07/UA8ErD.jpg"></a>
				</div>

				<div class="col-md-8">
					<p class="font">《UNIX环境高级编程（第3版）》</p>
					<p>内容简介:《UNIX环境高级编程（第3版）》是被誉为UNIX编程“圣经”的Advanced Programming in
						the UNIX
						Environment一书的第3版。在本书第2版出版后的8年中，UNIX行业发生了巨大的变化，特别是影响UNIX编程接口的有关标准变化很大。本书在保持前一版风格的基础上，根据最新的标准对内容进行了修订和增补，反映了最新的技术发展。</p>

					<input type="button"
						theHref="https://book.douban.com/subject/25900403/"
						webName="UNIX环境高级编程（第3版）" theType="好书" collectionID="B005"
						style="border: none; margin: -4px 0 20px 153px; padding-left: 3px; padding-top: 3px; width: 55px; height: 29px; font-size: 15px; outline: none;"
						value="收藏" data-v="已收藏"
						onclick="var s=this.value;this.value=this.dataset.v;this.dataset.v=s;" />

				</div>
			</form>
		</div>

		<div class="row" style="margin-bottom: 30px;">
			<form action="collectionServlet">
				<div class="col-md-4">
					<a href="https://book.douban.com/subject/30192800/"> <img
						class="fenxu-studybook"
						src="https://s1.ax1x.com/2020/07/07/UA8KPI.jpg">
					</a>
				</div>

				<div class="col-md-8">
					<p class="font">《Python神经网络编程》</p>
					<p>内容简介:神经网络是一种模拟人脑的神经网络，以期能够实现类人工智能的机器学习技术。
						本书揭示神经网络背后的概念，并介绍如何通过Python实现神经网络。本书适合想要从事神经网络研究和探索的读者学习参考，也适合对人工智
						能、机器学习和深度学习等相关领域感兴趣的读者阅读。</p>
					<input type="button"
						theHref="https://book.douban.com/subject/30192800/"
						webName="Python神经网络编程" theType="好书" collectionID="B006"
						style="border: none; margin: -4px 0 20px 153px; padding-left: 3px; padding-top: 3px; width: 55px; height: 29px; font-size: 15px; outline: none;"
						value="收藏" data-v="已收藏"
						onclick="var s=this.value;this.value=this.dataset.v;this.dataset.v=s;" />

				</div>
			</form>
		</div>

	</div>

	<!-- 精品课程 -->
	<h4 id="three" class="buything" style="margin-bottom: 30px;">精品课程⭐⭐⭐</h4>
	<div class="container">

		<div class="row">
			<div class="col-md-4">
				<form action="collectionServlet">
					<a
						href="https://www.bilibili.com/video/BV1xs411Q799?from=search&seid=10716511709457660171">
						<img class="fenxu-study"
						src="http://edu-image.nosdn.127.net/7DAA8B5CAD68223183B7907E49D8F47D.jpg?imageView&thumbnail=510y288&quality=100">
						<p class="font">零基础入门学习Python</p>
					</a> <input type="button"
						theHref="https://www.bilibili.com/video/BV1xs411Q799?from=search&seid=10716511709457660171"
						webName="零基础入门学习Python" theType="好课" collectionID="K001"
						style="border: none; margin: -4px 0 20px 153px; padding-left: 3px; padding-top: 3px; width: 55px; height: 29px; font-size: 15px; outline: none;"
						value="收藏" data-v="已收藏"
						onclick="var s=this.value;this.value=this.dataset.v;this.dataset.v=s;" />
				</form>
			</div>

			<div class="col-md-4">
				<form action="collectionServlet">
					<a
						href="https://kaoyan.icourse163.org/course/terms/1449999443.htm?courseId=1449554162">
						<img class="fenxu-study"
						src="https://edu-image.nosdn.127.net/B7593219FC5499F8195B804BA145B337.png?imageView&thumbnail=510y288&quality=100">
						<p class="font">2020四级全程班</p>
					</a> <input type="button"
						theHref="https://kaoyan.icourse163.org/course/terms/1449999443.htm?courseId=1449554162"
						webName="2020四级全程班" theType="好课" collectionID="K002"
						style="border: none; margin: -4px 0 20px 153px; padding-left: 3px; padding-top: 3px; width: 55px; height: 29px; font-size: 15px; outline: none;"
						value="收藏" data-v="已收藏"
						onclick="var s=this.value;this.value=this.dataset.v;this.dataset.v=s;" />
				</form>
			</div>
			<div class="col-md-4">
				<form action="collectionServlet">
					<a
						href="https://kaoyan.icourse163.org/course/terms/1207781203.htm?courseId=1207430809">
						<img class="fenxu-study"
						src="http://edu-image.nosdn.127.net/85280062CFE91069A8E4876CE803620B.png?imageView&thumbnail=510y288&quality=100">
						<p class="font">PS教程</p>
					</a> <input type="button"
						theHref="https://kaoyan.icourse163.org/course/terms/1207781203.htm?courseId=1207430809"
						webName="PS教程" theType="好课" collectionID="K003"
						style="border: none; margin: -4px 0 20px 153px; padding-left: 3px; padding-top: 3px; width: 55px; height: 29px; font-size: 15px; outline: none;"
						value="收藏" data-v="已收藏"
						onclick="var s=this.value;this.value=this.dataset.v;this.dataset.v=s;" />
				</form>
			</div>


			<footer class="footer">
				<div class="text-center" size="10">😄2020春季小学期</div>
			</footer>
</body>
<script type="text/javascript">
	$ajax({

	})
	$("#btn_collect")
			.click(
					function() {
						var classname = $("#btn_collect_icon").attr("class");
						$("#btn_collect_icon").removeClass(
								"glyphicon-star-empty glyphicon-star");
						if (classname == "glyphicon glyphicon-star-empty") {
							$("#btn_collect_icon").addClass(
									"glyphicon glyphicon-star");
							alert("收藏成功");
						} else {
							$("#btn_collect_icon").addClass(
									"glyphicon glyphicon-star-empty");
							alert("取消收藏");
						}
					});
</script>
</html>