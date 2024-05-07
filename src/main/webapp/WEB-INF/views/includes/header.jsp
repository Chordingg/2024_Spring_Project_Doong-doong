<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Doong Doong</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="/resources/mainpage/bootstrap/css/main.css" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link href="https://fonts.googleapis.com/css2?family=Dongle&family=Nanum+Brush+Script&family=Sedan+SC&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Diphylleia&family=Do+Hyeon&family=Dongle&family=Nanum+Brush+Script&family=Nanum+Pen+Script&family=Sedan+SC&display=swap" rel="stylesheet">
</head>
<body class="homepage is-preload">
	<div id="page-wrapper">

		<!-- Header -->
		<section id="header">
			<div class="container">

				<!-- Logo -->
				<h1 id="logo">
					<a href="mainPage">Doong Doong</a>
				</h1>
				<p>국내 최대 사진 인화 사이트 / 드론 배송 시스템</p>

				<!-- Nav -->
				<nav id="nav">
					<ul>
						<li><a class="icon solid fa fa-camera-retro" href="introduction"><span>Introduction</span></a></li>
						<li><a href="myinfo" class="icon solid fa-user"><span>User </span></a>
							<ul>
								<li><a href="myinfo">회원 정보</a></li>
								<li><a href="cart" >장바구니</a></li>
								<li><a href="customLogout">로그아웃</a></li>
							</ul></li>
						<li><a class="icon solid fa fa-truck" href="delevery"><span>Delivery</span></a></li>
						<li><a class="icon solid fa fa-question" href="customer"><span>Customer Service</span></a></li>
					</ul>
				</nav>

			</div>
		</section>

		<script>
            // 사용자가 로그인한 경우에만 사용자 이름을 표시합니다.
            var userId = '<%= session.getAttribute("userid") %>';
            if (userId) {
                document.getElementById('userMenu').innerHTML = '<a href="#" class="icon fa-user"><span>' + userId + '님</span></a>' +
                    '<ul>' +
                    '<li><a href="#">회원 정보</a></li>' +
                    '<li><a href="#">장바구니</a></li>' +
                    '<li><a href="#">리뷰 확인</a></li>' +
                    '<li><a href="customLogout">로그아웃</a></li>' +
                    '</ul>';
            } else {
                document.getElementById('userMenu').innerHTML = '<a href="#" class="icon fa-user"><span>회원가입</span></a>';
            }
        </script>
        