<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script src="js/jquery-3.6.0.min.js"></script>
</head>
<body>
<section class="page-section" id="contact">
            <div class="container px-4 px-lg-5">
                <div class="row gx-4 gx-lg-5 justify-content-center">
                    <div class="col-lg-8 col-xl-6 text-center">
                        <h2 class="mt-0">JOIN!</h2>
                        <hr class="divider" />
                        
                    </div>
                </div>
                <div class="row gx-4 gx-lg-5 justify-content-center mb-5">
                    <div class="col-lg-6">
                        <!-- * * * * * * * * * * * * * * *-->
               
                <form id="frm" action="memberJoin.do" onsubmit="return formCheck()" method="post">
                    <!-- Name input-->
                    <div class="form-floating mb-3">
                        <input class="form-control"id="memberId" name="memberId" type="text" placeholder="Enter your ID..." data-sb-validations="required" />
                        <label for="name">아이디</label>
                        <div class="invalid-feedback" data-sb-feedback="name:required">아이디를 입력하세요.</div><br>
						
						<div class="d-grid">
							<button class="btn btn-primary btn-l" type="button" id="btn" onclick="idCheck()">중복체크</button>
						</div>
                    </div>
		
		<div class="form-floating mb-3">
                        <input class="form-control" type="password" id="memberPassword" name="memberPassword" placeholder="Enter your Password..." data-sb-validations="required" />
                        <label for="name">비밀번호</label>
                        <div class="invalid-feedback" data-sb-feedback="name:required">비밀번호를 입력하세요.</div>
		
                   	 </div>

		<div class="form-floating mb-3">
                        <input class="form-control" type="password" id="memberPassword" name="memberPassword" placeholder="Enter your Password..." data-sb-validations="required" />
                        <label for="name">비밀번호 확인</label>
                        <div class="invalid-feedback" data-sb-feedback="name:required">비밀번호를 한번 더 입력하세요.</div>
		
                   	 </div>

 		<div class="form-floating mb-3">
                        <input class="form-control" id="memberName" name="memberName" type="text" placeholder="Enter your name..." data-sb-validations="required" />
                        <label for="name">이름</label>
                        <div class="invalid-feedback" data-sb-feedback="name:required">이름을 입력하세요.</div>
		</div>
		
		<div class="form-floating mb-3">
                        <input class="form-control" id="memberTel" name="memberTel" type="text" placeholder="Enter your tel..." data-sb-validations="required" />
                        <label for="name">연락처</label>
                        <div class="invalid-feedback" data-sb-feedback="name:required">연락처 입력하세요.</div>
		
                   	 </div>
		
                    <!-- Email address input-->
                    <div class="form-floating mb-3">
                        <input class="form-control"type="text" id="memberEmail" name="memberEmail"  data-sb-validations="required,email" />
                        <label for="email">이메일</label>
                        <div class="invalid-feedback" data-sb-feedback="email:required">이메일 주소가 필요합니다</div>
                     </div>   
					<div class="form-floating mb-3">
                        <input class="form-control"id="memberJob" name="memberJob" type="text" placeholder="Enter your name..." data-sb-validations="required" />
                        <label for="name">직업</label>
                        <div class="invalid-feedback" data-sb-feedback="name:required">직업을 입력하세요.</div>
					</div>
		
		<div class="form-floating mb-3">
			<select class="form-control" id="memberGender" name="memberGender"  >
			<option>--선택--</option>
			<option value="여자">여자</option>
			<option value="남자">남자</option>
			</select> <label for="petAddGender">성별</label>
		</div>
		
		<div class="d-grid">
		<input class="btn btn-primary btn-l" type="submit" value="회원가입"><br>
		<input class="btn btn-primary btn-l" type="reset" value="내용 지우기"><br>
		<input class="btn btn-primary btn-l" type="button" value="홈으로" onclick="location.href='main.do'">
		</div>
		
		</form>
		</div>
		</div>
		</div>
		</section>
		
<!-- 카카오 로그인 버튼 -->
   <a id="btn-kakao-login" href="javascript:void(0)" onclick="kakaoLogin();">
      <img src="//k.kakaocdn.net/14/dn/btroDszwNrM/I6efHub1SN5KCJqLm1Ovx1/o.jpg" width="200" alt="카카오 로그인 버튼"/>
   </a>
   <form id="kakaoForm" method="post" action="kakaoLogin.do">
      <input type="hidden" name="email"/>
      <input type="hidden" name="name"/>
   </form>
<!--    <ul> -->
<!--       <li onclick="kakaoLogout();"> -->
<!--          <a href="javascript:void(0)"> -->
<!--              <span>카카오 로그아웃</span> -->
<!--          </a> -->
<!--       </li> -->
<!--    </ul> -->

<!-- 카카오 스크립트 -->
   <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
   <script>
   Kakao.init('8979f5b92eaf5997a6ea3ade6a7e65f1'); //발급받은 키 중 javascript키를 사용해준다.
   //카카오로그인
   function kakaoLogin() {
       Kakao.Auth.login({
         success: function (response) {
           Kakao.API.request({ // 사용자 정보 가져오기
             url: '/v2/user/me',
             success: function (response) { 
                var account = response.kakao_account;
                  $('#kakaoForm input[name=email]').val(account.email);
               $('#kakaoForm input[name=name]').val(account.profile.nickname);
               // 사용자 정보가 포함된 폼을 서버로 제출한다.
               document.querySelector('#kakaoForm').submit();
             },
             fail: function (error) {
               console.log(error)
             },
           })
         },
         fail: function (error) {
           console.log(error)
         },
       })
     }
   //카카오로그아웃 ()
   function kakaoLogout() {
       if (Kakao.Auth.getAccessToken()) {
         Kakao.API.request({
           url: '/v1/user/unlink',
           success: function (response) {
              console.log(response)
           },
           fail: function (error) {
             console.log(error)
           },
         })
         Kakao.Auth.setAccessToken(undefined)
       }
     }  
   </script>



<script type="text/javascript">
	function formCheck() {
		if(frm.memberId.value == "") {
			alert("사용자 아이디를 입력하세요.");
			frm.memberId.focus();
			return false;
		}
		
		if(frm.checkId.value == "No") {
			alert("아이디 중복체크를 해주세요.");
			return false;
		}
		
		if(frm.memberPassword.value != frm.password.value) {
			alert("패스워드 일치하지 않습니다.");
			frm.memberPassword.value = "";
			frm.password.value = "";
			frm.memberPassword.focus();
			return false;
		}
		
		if(frm.memberName.value == "") {
			alert("사용자 이름을 입력하세요.");
			frm.memberName.focus();
			return false;
		}
		
		return true;
	}
	
	function idCheck() {
		let id = frm.memberId.value;
		if(id == "") {
			alert("아이디 입력후 중복체크 해주세요.");
			frm.memberId.focus();
		}else {
			//ajax를 이용하여 아이디 중복체크를 수행한다.
			const xht = new XMLHttpRequest();  //ajax 객체 생성
			xht.onload = function() {           //결과를 받아 처리하는 함수
				 if(this.readyState == 4 && this.status == 200) {
				    htmlConvertAjax(this.responseText);  //성공했을 때 수행하는 함수
				  }else {
					errorAjaxCall();   //실패 했을 때 수행하는 함수
				  }
			}
			xht.open("GET","ajaxMemberIdCheck.do?id="+id);  //호출할 주소와 방식을 설정
			xht.send();  // 호출
		}
	}
	
	function htmlConvertAjax(str) {
		if(str == "Used") {
			alert("사용가능한 아이디 입니다.");
			frm.checkId.value = "Yes";
			frm.btn.disabled = true;
			//frm.memberPassword.focus();
		}else {
			alert("사용할 수 없는 아이디 입니다.");
			frm.memberId.value= "";
			frm.memberId.focus();
		}
	}
	
	function errorAjaxCall() {
		alert("네트워크 통신 장애로 인해 처리할 수 없다. /n	잠시후 다시 해 보세요");
	}
</script>
</body>
</html>