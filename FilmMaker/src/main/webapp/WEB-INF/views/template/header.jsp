<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>filmMaker</title>
<script>
<!-- 전역변수 contextPath 설정 -->
const contextPath = "${pageContext.request.contextPath}";
</script>
<!-- BootStrap CDN -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<!-- font-awesome cdn -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"/>
<!-- vue, axios, lodash cdn -->
<script src="https://unpkg.com/vue@3.2.36"></script>
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/lodash@4.17.21/lodash.min.js"></script>
<!--favicon -->
<link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/static/favicon.png">
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/static/favicon.png">
<style>
html{
	min-width:1024px;
}
.header{
	position: absolute;
	z-index: 2;
	width:100%;
	height:194px;
	background: linear-gradient(to bottom, rgba(29,29,31,1) 0%,rgba(0,0,0,0) 100%); 
}
.header .logo{
	position :absolute;
	left :50%;
	top:18px;
	margin-left :-109px;
	/* background-image : url("${pageContext.request.contextPath}/img/logo1.png");
	background: url("${pageContext.request.contextPath}/img/logo1.png") no-repeat center center; */
}

.header .logo a {
	display: block;
	width:250px;
	height:50px;	
}

.gnb{
	position: relative;
	width :980px;
	height :70px;
	margin : 0 auto;
	border-bottom: 1px solid rgba(255, 255, 255, .3);
}
.gnb ul{
	margin-top:40px;
}
.gnb-menu1{
	float: right;
	opacity: .5;

}
.gnb-menu1 li{
	margin-left: 14px;
}

a{
	text-decoration: none;
}

.gnb-menu1 li a{
	color : #FFF;
}

.gnb-menu2{
	position : absolute;
	right:10px;
	top:45px;
	
}

.gnb-menu2 li{
	margin-left: 25px;
}

.gnb-menu2 a{
	font-size:12px;
	color : white;	
}

.nav{
	width: 100%;
	text-align: center;
	margin : 3px auto 0;
}

.nav ul li{
	margin-top:20px;
	margin-left:35px;
}

.nav ul li a{
	color : white;
}



body{
	line-height: 1.1;
}



</style>
</head>
<body>
	<div class="header">
		<h1 class="logo">
			<a href="#">FilmMaker</a>
		</h1>
		<div class="gnb">
			<ul class="gnb-menu1 d-flex list-unstyled">
				<li>
					<a href="#">멤버십</a>
				</li>
				<li>
					<a href="#">고객센터</a>
				</li>
				<li>
					<a href="#">로그인</a>
				</li>		
			</ul>
			<ul class="gnb-menu2 d-flex list-unstyled">
				<li>
					<a href="#">회원가입</a>
				</li>
				<li>
					<a href="#">바로예매</a>
				</li>	
			</ul>
		</div>
		<div class="nav d-flex justify-content-center">
			<ul class="list-unstyled  d-flex justify-content-center">
				<li>
					<a href="#">예매</a>
				</li>
				<li>
					<a href="#">영화</a>
				</li>
				<li>
					<a href="#">영화관</a>
				</li>
				<li>
					<a href="#">이벤트</a>
				</li>
				<li>
					<a href="#">스토어</a>
				</li>
			</ul>
		</div>
		
	
	</div>
</body>
</html>