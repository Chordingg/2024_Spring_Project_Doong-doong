<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Doong-doong Main Page</title>
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />

<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"
	crossorigin="anonymous"></script>
	
<!-- Google fonts-->
<link rel="preconnect" href="https://fonts.gstatic.com" />
<link href="https://fonts.googleapis.com/css2?family=Tinos:ital,wght@0,400;0,700;1,400;1,700&amp;display=swap" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css2?family=DM+Sans:ital,wght@0,400;0,500;0,700;1,400;1,500;1,700&amp;display=swap" rel="stylesheet" />
	
<!-- Core theme CSS (includes Bootstrap)-->
<link href="/resources/first/bootstrap/css/styles.css" rel="stylesheet" />
</head>
<body>

	<!-- Background Video-->
	<video class="bg-video" playsinline="playsinline" autoplay="autoplay" muted="muted" loop="loop">
		<source src="/resources/first/bootstrap/assets/mp4/bg.mp4" type="video/mp4" />
	</video>
	
	<!-- Masthead-->
	<div class="masthead">
		<div class="masthead-content text-white">
			<div class="container-fluid px-4 px-lg-0">
				<h1 class="fst-italic lh-1 mb-4">Doong Doong</h1>
				<p class="mb-5">사진 인화 / 드론 배송 시스템</p>
				
				<form id="contactForm" data-sb-form-api-token="API_TOKEN">
					<!-- Email address input-->
					<div class="row input-group-newsletter">
						<div class="col">
							<input class="form-control" id="email" type="email"
								placeholder="이메일을 입력해주세요." aria-label="Enter email address..." data-sb-validations="required,email" /> 
						</div>
						<!-- Remember me checkbox -->
					</div>
					<br>
					<!-- password input-->
					<div class="row input-group-newsletter">	
						<div class="col">
							<input class="form-control" id="password" type="password" placeholder="비밀번호를 입력해주세요."
								aria-label="Enter password..." data-sb-validations="required,password" />
						</div>
						
						<div class="col-auto">
							<button class="btn btn-primary disabled" id="submitButton" type="submit">Log In</button>
						</div>
					</div>
					
					<div class="invalid-feedback mt-2" data-sb-feedback="email:required">An email is required.</div>
					<div class="invalid-feedback mt-2" data-sb-feedback="email:email">Email is not valid.</div>
					<!-- Submit success message-->
					<!---->
					<!-- This is what your users will see when the form-->
					<!-- has successfully submitted-->
					<br>
					<div class="d-none" id="submitSuccessMessage">
						<div class="text-center mb-3 mt-2">
							<div class="fw-bolder">존재하지않는 이메일 입니다.</div>
							다시 입력해주세요. <br /> 
							<a href="https://startbootstrap.com/solution/contact-forms">회원가입 주소 작성해야됌(https://startbootstrap.com/solution/contact-forms)</a>
						</div>
					</div>

					<div style="display: flex; gap: 20px;">
						<div>
							<a href="mainPage" style="text-decoration: none;">홈페이지</a>
						</div>
						<div>
							<a href="register" style="text-decoration: none;">회원가입</a>
						</div>
						<div class="col-auto d-flex align-items-center">
							<input class="form-check-input" type="checkbox" id="rememberMe"name="remember-me" style="transform: scale(0.8); width: 1.5rem; height: 1.5rem"> 
							<label class="form-check-label" for="rememberMe">Remember Me</label>
						</div>
					</div>


					<!-- Submit error message-->
					<!---->
					<!-- This is what your users will see when there is-->
					<!-- an error submitting the form-->
					<div class="d-none" id="submitErrorMessage">
						<div class="text-center text-danger mb-3 mt-2">Error sending message!</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- Social Icons-->
	<!-- For more icon options, visit https://fontawesome.com/icons?d=gallery&p=2&s=brands-->
	 <div class="social-icons">
	      <div class="d-flex flex-row flex-lg-column justify-content-center align-items-center h-100 mt-3 mt-lg-0">
	         <a class="btn btn-dark m-3" href="https://github.com/Chordingg/Doong_doong_Project" target="_blank">
	         <i class="fab fa-github"></i></a>
	         <a class="btn btn-dark m-3" href="https://www.youtube.com/" target="_blank">
	         <i class="fab fa-youtube"></i></a> 
	         <a class="btn btn-dark m-3" href="https://www.instagram.com/" target="_blank">
	         <i class="fab fa-instagram"></i></a>
	      </div>
	   </div>
	
	<!-- Bootstrap core JS-->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="/resources/first/bootstrap/js/scripts.js"></script>
	
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>
</html>
