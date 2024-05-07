<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<title>Doong-doong Main Page</title>
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />

<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
   
<!-- Google fonts-->
<link rel="preconnect" href="https://fonts.gstatic.com" />
<link href="https://fonts.googleapis.com/css2?family=Tinos:ital,wght@0,400;0,700;1,400;1,700&amp;display=swap" rel="stylesheet" />
<link
   href="https://fonts.googleapis.com/css2?family=DM+Sans:ital,wght@0,400;0,500;0,700;1,400;1,500;1,700&amp;display=swap" rel="stylesheet" />
   
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
            <h1 class="fst-italic lh-1 mb-4">Doong - Doong</h1>
            <p class="mb-5">회원가입</p>
            <!-- * * * * * * * * * * * * * * *-->
            <!-- * * SB Forms Contact Form * *-->
            <!-- * * * * * * * * * * * * * * *-->
            <!-- This form is pre-integrated with SB Forms.-->
            <!-- To make this form functional, sign up at-->
            <!-- https://startbootstrap.com/solution/contact-forms-->
            <!-- to get an API token!-->
				<form id="contactForm" data-sb-form-api-token="API_TOKEN">
					<!-- Email address input-->
					<div class="row input-group-newsletter">
						<div class="col">
							<input class="form-control" placeholder="이메일을 입력해주세요." name="email" id="email" type="email" autofocus>
						</div>
					</div>
					<br>

					<div class="row input-group-newsletter">
						<div class="col">
							<input class="form-control" placeholder="인증 코드 6자리" maxlength="6" disabled="disabled" 
							name="authCode" id="authCode" type="text" autofocus> 
							<span id="emailAuthWarn"></span>
						</div>
						<div class="col-auto">
							<input type="button" value="인증하기" class="btn btn-primary" id="emailAuth" autofocus>
						</div>
					</div>
					<br>
					<div class="row input-group-newsletter">
						<div class="col">
							<input class="form-control" id="name" type="text"
								placeholder="이름을 입력해주세요." data-sb-validations="required,name" />
						</div>
					</div>
					<br>

					<div class="row input-group-newsletter">
						<div class="col">
							<input class="form-control" id="phone" type="text"
								placeholder="휴대폰번호를 입력해주세요." data-sb-validations="required,phone" />
						</div>
					</div>
					<br> 
						<input type="text" id="sample4_postcode" placeholder="우편번호">
						<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
						<input type="text" id="sample4_roadAddress" placeholder="도로명주소">
						<input type="text" id="sample4_jibunAddress" placeholder="지번주소">
						<span id="guide" style="color:#999;display:none"></span>
						<input type="text" id="sample4_detailAddress" placeholder="상세주소">
						<input type="text" id="sample4_extraAddress" placeholder="참고항목">

					<!-- password input-->
					<div class="row input-group-newsletter">
						<div class="col">
							<input class="form-control" id="password" type="password"
								placeholder="비밀번호를 입력해주세요." data-sb-validations="required,password" />
						</div>

						<div class="col-auto">
							<button class="btn btn-primary disabled" id="submitButton" type="submit">회원가입</button>
						</div>

					</div>

					<br>
					<div style="display: flex; gap: 20px;">
						<div>
							<a href="mainPage" style="text-decoration:none">홈페이지</a>
						</div>
						<div>
							<a href="/" style="text-decoration:none">로그인화면</a>
						</div>
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

<!-- JavaScript 코드 -->
<script type="text/javascript">
    $(document).ready(function() {
        $('#emailAuth').prop('disabled', true); // 페이지 로드시 인증하기 버튼 비활성화
        var code; // 인증 코드 저장 변수

        // 인증하기 버튼을 눌렀을 때 동작
        $("#emailAuth").click(function() {
            var email = $("#email").val(); // 사용자가 입력한 이메일 값 얻어오기
          
            // 이메일 필드가 비어 있는지 확인
            if (email === "") {
                alert("이메일을 입력해주세요.");
                return; // 함수 종료
            }
          
            // Ajax로 전송
            $.ajax({
                url : './EmailAuth',
                data : {
                    email : email
                },
                type : 'POST',
                dataType : 'json',
                success : function(result) {
                    console.log("result : " + result);
                    $("#authCode").prop("disabled", false);
                    code = result;
                    alert("인증 코드가 입력하신 이메일로 전송 되었습니다.");
                }
            }); // End Ajax
        });
        
        // 회원가입 버튼 클릭 시 동작
        $("#submitButton").click(function() {
            // 이름 유효성 검사
            var name = $("#name").val();
            if (name === "") {
                alert("이름을 입력해주세요.");
                $("#name").focus();
                return;
            }

            // 휴대폰 번호 유효성 검사
            var phone = $("#phone").val();
            if (!/^\d{11}$/.test(phone)) {
                alert("올바른 휴대폰 번호를 입력해주세요.");
                $("#phone").focus();
                return;
            }

            // 비밀번호 유효성 검사
            var password = $("#password").val();
            if (password.length < 6) {
                alert("비밀번호는 최소 6자 이상이어야 합니다.");
                $("#password").focus();
                return;
            }

            // 인증 코드 확인
            var inputCode = $("#authCode").val();
            if (Number(inputCode) !== code) {
                alert("인증번호가 일치하지 않습니다. 다시 확인해주세요.");
                $("#authCode").focus();
                return;
            }

            // 모든 조건을 만족할 경우 회원가입 처리 등 추가 작업 수행
            alert("회원가입이 완료되었습니다!");
            // 여기에 실제 회원가입 처리 코드를 넣어주세요.
        });
    });
</script>

<!-- 주소 찾기 -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
</script>

</body>
</html>
