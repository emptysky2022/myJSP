<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign up</title>
<style type="text/css">
	form{
		width: 800px;	
	}
	span{
		display:inline-block;
		width: 300px;
		vertical-align: top;
	}
	.check{
		margin-top: 10px;
		margin-left: 5px;
		float:right;
	}
	.importent{
		display: inline;
		float: right;
		color: red;
	}
</style>
<script type="text/javascript" src="join.js"></script>
</head>
<body>
	<form name="param" action="signup">
		<span>이름
			<div class="importent">*</div>
		</span>
		<input type="text" name="name"><br>
		<span>주민등록번호
			<div class="importent">*</div>
		</span>
		<input type="text" name="residentFirst" maxlength=6> - 
		<input type="text" name="residentSecond" maxlength=7><br>
		<span>아이디
			<div class="importent">*</div>
		</span>
		<input type="text" name="id"><br>
		<span>비밀번호
			<div class="importent">*</div>
		</span>
		<input type="password" name="pwd"><br>
		<span>비밀번호 확인
			<div class="importent">*</div>
		</span>
		<input type="password" name="pwd_check"><br>
		<span>이메일</span>
		<input type="text" name="email"> @ <input type="text" name="domain" readonly>
		<label for="email_domain" size=1></label>
		<select id="email_domain" name="email_domain" size=1 onchange="changeDomain()">
			<option value="">선택하세요</option>
			<option value="nate.com">nate.com</option>
			<option value="naver.com">naver.com</option>
			<option value="github.com">github.com</option>
			<option value="gmail.com">gmail.com</option>
			<option value="daum.com">daum.com</option>
		</select>
		<br>
		<span>우편번호</span>
		<input type="text" name="post"><br>
		<span>주소</span>
		<input type="text" name="address"> <input type="text" name="address_detail"><br>
		<span>핸드폰번호</span>
		<input type="tel" name="phone"><br>
		<span>직업</span>
		<label for="job" size=3></label>
		<select id="job" name="job" size=3>
			<option value="컴퓨터/인터넷">컴퓨터/인터넷</option>
			<option value="언론">언론</option>
			<option value="공무원">공무원</option>
			<option value="군무원">군무원</option>
			<option value="프로게이머">프로게이머</option>
		</select><br>
		<span>메일/SMS 정보 수신</span>
		<label for="access"></label>
			<input type="radio" id="access" name="access" value="yes" checked> 수신
			<input type="radio" id="access" name="access" value="no"> 수신거부		
		<br>	
		<span>관심분야</span>
		<input type="checkbox" name="interest" value="생두">생두
		<input type="checkbox" name="interest" value="원두">원두
		<input type="checkbox" name="interest" value="로스팅">로스팅
		<input type="checkbox" name="interest" value="핸드드립">핸드드립
		<input type="checkbox" name="interest" value="에스프레소">에스프레소
		<input type="checkbox" name="interest" value="창업">창업<br>
		
		<input class="check" type="reset" value="취소">
		<input class="check" type="submit" value="회원가입" onclick="return validation()">
	</form>
</body>
</html>