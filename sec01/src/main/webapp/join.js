

function validation(){
	if(document.param.name.value == ""){
		alert("이름을 입력해주세요.");
		document.param.name.focus();
		console.log(document.param.residentFirst.value.length)
		return false;
	} else if(document.param.residentFirst.value == "" || document.param.residentFirst.value.length < 6){
		alert("올바른 주민등록번호를 입력해주세요.");
		document.param.residentFirst.focus();
		return false;
	} else if(document.param.residentSecond.value == "" || document.param.residentSecond.value.length < 7){
		alert("올바른 주민등록번호를 입력해주세요.");
		document.param.residentSecond.focus();
		return false;
	} else if(document.param.id.value == ""){
		alert("아이디를 입력해주세요.");
		document.param.id.focus();
		return false;
	} else if(document.param.pwd.value == "" || document.param.pwd.value.length < 8){
		alert("비밀번호는 8글자 이상으로 입력해주세요.");
		document.param.pwd.focus();
		return false;
	} else if(document.param.pwd_check.value == "" || document.param.pwd_check.value !== document.param.pwd.value){
		alert("비밀번호가 같지 않습니다.");
		document.param.pwd_check.focus();
		return false;
	} else{
		return true;
	}
}

function changeDomain(){
	if(!(document.param.email_domain.value == ""))
	document.param.domain.value = document.param.email_domain.value;
}