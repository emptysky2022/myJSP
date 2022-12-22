/**
 * 
 */
 
 function loginCheck(){
	if(document.frm.userid.value.length == 0){
		alert("아이디를 입력해주세요.");
		frm.userid.focus();
		return false;
	}
	if(document.frm.pwd.value == ""){
		alert("비밀번호를 입력해주세요.");
		frm.pwd.focus();
		return false;
	}
	
	return true;
}
 
 function idCheck(){
	if(document.frm.userid.value == ""){
		alert("아이디를 입력해주세요.");
		document.frm.userid.focus();
		return;
	}
	var url = "idCheck.do?userid=" + document.frm.userid.value;
	window.open(url, "_blank_1", "menubar=no, width=450, height=200");
}

 function idok(){
	opener.frm.userid.value = document.frm.userid.value;
	opener.frm.reid.value = document.frm.userid.value;
	self.close();
}

 function joinCheck(){
	if(document.frm.name.value.length == 0){
		alert("이름을 입력해주세요.");
		frm.name.focus();
		return false;
	}
	if(document.frm.userid.value.length == 0){
		alert("아이디를 입력해주세요.");
		frm.userid.focus();
		return false;
	}
	if(document.frm.userid.value.length < 4){
		alert("아이디는 4글자 이상이어야 합니다.");
		frm.userid.focus();
		return false;
	}
	if(document.frm.pwd.value.length == 0){
		alert("암호를 입력해주세요.");
		frm.pwd.focus();
		return false;
	}
	if(!(document.frm.pwd.value == document.frm.pwd_check.value)){
		alert("암호가 같지 않습니다.");
		frm.pwd_check.focus();
		return false;
	}
	return true;
}